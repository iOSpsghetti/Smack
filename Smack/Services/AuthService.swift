//  AuthService.swift
//  Smack ... Udemy-6
//
//  Created by Steve Zeller on 3/20/19.
//  Copyright © 2019 Capital. All rights reserved.

import Foundation
import Alamofire
import SwiftyJSON


class AuthService {
    
    // Create SINGLETON ...
    static let instance = AuthService()
    
    // Persisted vars via User Defaults
    // ONLY use UserDefaults for default types (String/Int/Double etc.)
    //   i.e. do NOT use for large data types
    // Dickmunch says is is NOT super secure ... DO NOT store passwords
    let defaults = UserDefaults.standard
    // UserDefaults: An interface to the user’s defaults database, where you store
    //key-value pairs persistently across launches of your app.
    
    var isLoggedIn: Bool {
        get {
            return defaults.bool(forKey: LOGGED_IN_KEY)
        }
        set {
            // newValue seems to be part of the setter in swift
            defaults.set(newValue, forKey: LOGGED_IN_KEY)
        }
    }
    
    var authToken: String {
        get {
            // MUST cast (i.e. "as! String") since "defaults.value" is an optional
            return defaults.value(forKey: TOKEN_KEY) as! String
        }
        set {
            defaults.set(newValue, forKey: TOKEN_KEY)
        }
    }
    
    var userEmail: String {
        get {
            // MUST cast (i.e. "as! String") since "defaults.value" is an optional
            return defaults.value(forKey: USER_EMAIL) as! String
        }
        set {
            defaults.set(newValue, forKey: USER_EMAIL)
        }
    }
    
    // For ALL REQUESTS ...
    // - GET Retrieves data, such as a web page, but doesn’t alter any data on the server
    // - HEAD: Identical to GET but only sends back the headers and none of the actual data
    // - POST: Sends data to the server, commonly used when filling a form and clicking submit
    // - PUT: Sends data to the specific location provided
    // - DELETE: Deletes data from the specific location provided
    
    // Alamofire is a library built on TOP of URLSession framework that makes Web requests EASIER
    // 1. Import Alamofire
    
    
    func registerUser(email: String, password: String, completion: @escaping CompletionHandler) {
        
        let lowercaseEmail = email.lowercased()
        
        let body: [String: Any] = [
            "email": lowercaseEmail,
            "password": password
        ]
        
        Alamofire.request(URL_REGISTER, method: .post, parameters: body, encoding: JSONEncoding.default, headers: HEADER).responseString { (response) in

            // If NO Errors ...
            if response.error == nil {
                // This IS the "completion" parameter for this "registerUser" function (you are in now)
                completion(true)
            } else {
                completion(false)
                debugPrint(response.error as Any)
            }
        }
    }
    
    
    func loginUser(email: String, password: String, completion: @escaping CompletionHandler) {
        
        let lowercaseEmail = email.lowercased()
        
        let body: [String: Any] = [
            "email": lowercaseEmail,
            "password": password
        ]
        
        Alamofire.request(URL_LOGIN, method: .post, parameters: body, encoding: JSONEncoding.default, headers: HEADER).responseJSON { (response) in
            
            if response.result.error == nil {
                
                /*
                // 1st LOW-LEVEL JSON implemetation
                // Our JSON is a Dictionary of Key (String) Value (Any) pairs ...
                if let json = response.result.value as? Dictionary<String, Any> {
                    if let email = json["user"] as? String {
                        // HAVE the user JSON from the server ... set user properties
                        self.userEmail = email
                    }
                    if let token = json["token"] as? String {
                        self.authToken = token
                    }
                }
                */
                
                
                // Using SwiftyJSON ...
                // 1. Get Data ...
                guard let data = response.data else {return}
                // 2. Create SwiftyJSON Object ...
                let json = JSON(data: data)
                // SwiftyJSON SAFELY unwraps "email" and "token" values for you
                self.userEmail = json["email"].stringValue
                self.authToken = json["token"].stringValue
                
                
                
                // Dude says we ARE logged in (I suppose this should be true ???)
                self.isLoggedIn = true

                // NO (nil) Error !!! = SUCCESS
                // Tell callers of SUCCESS
                completion(true)
                
            } else {
                // FAILED  ... Let callers know web request FAILED
                completion(false)
                debugPrint(response.result.error as Any)
            }
            
        }
        
        
        
    }
    
    
    
    
    
    
    
    let request = ""
    let mongo = "mongodb://<dbuser>:<dbpassword>@ds135233.mlab.com:35233/zchat"
    
//    Alamofire.request("https://httpbin.org/get").responseJSON { response in
//        print("Request: \(String(describing: response.request))")   // original url request
//        print("Response: \(String(describing: response.response))") // http url response
//        print("Result: \(response.result)")                         // response serialization result
//
//        if let json = response.result.value {
//        print("JSON: \(json)") // serialized json response
//        }
//
//        if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
//        print("Data: \(utf8Text)") // original server data as UTF8 string
//        }
//    }
    
    
    
}









