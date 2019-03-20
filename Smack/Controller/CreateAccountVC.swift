//  CreateAccountVC.swift
//  Smack
//
//  Created by Steve Zeller on 3/18/19.
//  Copyright © 2019 Capital. All rights reserved.

import UIKit

class CreateAccountVC: UIViewController {

    // Outlets ...
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func createAccntPressed(_ sender: Any) {
        // guard statments let you safely unwrap optional values
        // BECAUSE the .text property of a UITextField is OPTIONAL it MUST be unwrapped
        guard let email = emailTxt.text, emailTxt.text != nil else {return}
        guard let pass = passTxt.text, passTxt.text != nil else {return}
        
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            //
            if success {
                print("registered user!")
            }
        }
        
    }
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
    
    
    
    @IBAction func closePressed(_ sender: Any) {
    
        // SEGUE_UNWIND_TO_CHANNEL is a constant
        // UNWIND FROM SEGUE
        // 2 of 2. On DestinationVC (this VC),
        //   you can NOW use a Regular Segue to go back to the ROOT
        //   (no matter how many segues it took you to get to this DestinationVC)
        performSegue(withIdentifier: SEGUE_UNWIND_TO_CHANNEL, sender: nil)
    
    }
    



}
