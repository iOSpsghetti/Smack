//
//  ChannelVC.swift
//  Smack
//
//  Created by Steve Zeller on 3/16/19.
//  Copyright © 2019 Capital. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    //Outlets ...
    @IBOutlet weak var loginBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.width - 60

    }
    

    @IBAction func loginBtnPressed(_ sender: Any) {
        
        performSegue(withIdentifier: SEGUE_LOGIN, sender: nil)
        
    }
    
    

}
