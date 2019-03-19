//  CreateAccountVC.swift
//  Smack
//
//  Created by Steve Zeller on 3/18/19.
//  Copyright © 2019 Capital. All rights reserved.

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


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
