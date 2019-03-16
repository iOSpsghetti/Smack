//
//  ChatVC.swift
//  Smack
//
//  Created by Steve Zeller on 3/16/19.
//  Copyright © 2019 Capital. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    //486BBA
    
    //Outlets
    @IBOutlet weak var menuBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
     
        // This allows you to Drag the Front View Controller to "Reveal" the Bottom View Controller
        self.view.addGestureRecognizer((self.revealViewController()?.panGestureRecognizer())!)
        // This allows you to Tap the Front View Controller to slide it back (i.e. Un-Reveal)
        self.view.addGestureRecognizer((self.revealViewController()?.tapGestureRecognizer())!)
        
        
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
