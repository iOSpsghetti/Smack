//  LoginVC.swift
//  Smack
//
//  Created by Steve Zeller on 3/17/19.
//  Copyright © 2019 Capital. All rights reserved.


import UIKit

class LoginVC: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func closePressed(_ sender: Any) {
        
        // Dismiss THIS ViewController
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        
        performSegue(withIdentifier: SEGUE_CREATE_ACCOUNT, sender: nil)
        
    }
    

}
