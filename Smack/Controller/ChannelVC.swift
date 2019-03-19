//  ChannelVC.swift
//  Smack Udemy-6
//     https://www.udemy.com/devslopes-ios12/learn/v4/t/lecture/11450328?start=0
//
//  Created by Steve Zeller on 3/16/19.
//  Copyright © 2019 Capital. All rights reserved.

import UIKit

class ChannelVC: UIViewController {

    //Outlets ...
    @IBOutlet weak var loginBtn: UIButton!
    
    // UNWIND FROM SEGUE
    // 1 of 2. Create @IBAction (func) in Root (this) ViewController
    @IBAction func prepareforUnwind(segue: UIStoryboardSegue){}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set width of ViewController that is shown (60 = width of Top ViewController)
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.width - 60

    }
    

    @IBAction func loginBtnPressed(_ sender: Any) {
        
        // SEGUE_LOGIN is a constant
        performSegue(withIdentifier: SEGUE_LOGIN, sender: nil)
        
    }
    
    

}
