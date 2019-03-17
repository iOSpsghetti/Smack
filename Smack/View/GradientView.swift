//  GradientView.swift
//  Smack
//
//  Created by Steve Zeller on 3/16/19.
//  Copyright © 2019 Capital. All rights reserved.


import UIKit

// Get the changes in THIS Class to display in Interface Builder (1 of 5)
//   i.e. Render this class's visual effects inside the Storyboard real-time
@IBDesignable

class GradientView: UIView {
    
    //NOT WORKING IN XCODE 10
    // This will CREATE a Property INSIDE STORYBOARD I can see and can change !!!!
    //   in associated Inspector Window (this adds a Color Picker)
    @IBInspectable var topColor = #colorLiteral(red: 0.2823529412, green: 0.4196078431, blue: 0.7294117647, alpha: 1) {
        // Event fired per @IBDesignable (above) (i.e. I changed something for a UIView of this class)
        // "didSet" updates the layout of thies View Immediately when I change this Property
        //    eg. this one is Color (top gradient)
        didSet {
            // This calls "layoutSubviews" function (I added via override below)
            self.setNeedsLayout()
        }
    }

    
    // This will CREATE a Property INSIDE STORYBOARD I can see and can change !!!!
    //   in associated Inspector Window (this adds a Color Picker)
    @IBInspectable var bottomColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        // Event fired per @IBDesignable (above) (i.e. I changed something for a UIView of this class)
        // "didSet" updates the layout of thies View Immediately when I change this Property
        //    eg. this one is Color (top gradient)
        didSet {
            // This calls "layoutSubviews" function (I added via override below)
            self.setNeedsLayout()
        }
    }
    
    
    // MUST override what happens when any of these Properties are changed
    override func layoutSubviews() {
        
        // NOT WORKING ... super.layoutSubviews()
        
        // Create Core Graphics object ... It needs 4 things (2 thru 5) ...
        let gradientLayer = CAGradientLayer()
        // 2 of 5. Add Array of Colors (topColor and bottomColor above, can be 2 or more)
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        
        // 2b. EXAMPLE 3 Color Gradient (middle is sandwiched)
        //gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor, topColor.cgColor]
        
        // 3 of 5. Start and End Points (using 0,0 = upperLeft to 1,1 = lowerRight coordinate system)
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        // EXAMPLE-VERTICAL ... gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        
        // 4 of 5. Size
        gradientLayer.frame = self.bounds
        
        // 5 of 5. ADD Layer to BOTTOM (i.e. 0) of stack
        self.layer.insertSublayer(gradientLayer, at: 0)
        
    }


}
