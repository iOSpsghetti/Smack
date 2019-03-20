//  RoundedButton.swift
//  Smack ... Udemy-6
//
//  Created by Steve Zeller on 3/20/19.
//  Copyright © 2019 Capital. All rights reserved.

import UIKit

@IBDesignable

class RoundedButton: UIButton {

    // This will CREATE a Property INSIDE STORYBOARD I can see and can change !!!!
    //   in associated Inspector Window (this adds a Color Picker)
    @IBInspectable var cornerRadius: CGFloat = 6.0 {
        // Event fired per @IBDesignable (above)
        // (i.e. I changed something for a UIView of this class)
        // "didSet" updates the layout of thies View Immediately when I change this Property
        //    eg. this one is Color (top gradient)
        didSet {
            
            self.layer.cornerRadius = cornerRadius
            
            // This calls "layoutSubviews" function (I added via override below)
            self.setNeedsLayout()
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    // Called when a designable object is created in Interface Builder.
    override func prepareForInterfaceBuilder() {
        // Your implementation of this method must call super at some point
        // so that parent classes can perform their own custom setup.
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
    }
    
}
