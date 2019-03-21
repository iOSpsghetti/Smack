//  Constants.swift
//  Smack ... Udemy-6
//
//  Created by Steve Zeller on 3/17/19.
//  Copyright © 2019 Capital. All rights reserved.


import Foundation

// typealias = Renaming a Type (i.e. setting a custom type from an existing one)
// example ...
typealias Z = String
let xyz: Z = "zzz"

// Here we are customizing type "CompletionHandler" as a Closure
typealias CompletionHandler = (_ Success: Bool) -> ()

// URL Constants
let BASE_URL = "https://chatboxsz.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"


// Segue Iedentifiers ...
let SEGUE_LOGIN = "segueLogin"
let SEGUE_CREATE_ACCOUNT = "segue_Create_Account"
let SEGUE_UNWIND_TO_CHANNEL = "segue_UnwindToChannel"


// UserDefaults (persisted)
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"


// Headers ...
let HEADER = ["Content-Type:": "application/json; charset=utf-8"]

