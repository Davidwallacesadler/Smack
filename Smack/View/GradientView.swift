//
//  GradientView.swift
//  Smack
//
//  Created by David Sadler on 1/25/19.
//  Copyright © 2019 David Sadler. All rights reserved.
//

import UIKit

//Designable - works in the storyboard (interface builder)
@IBDesignable
class GradientView: UIView {
    
    //Inspectable - be able to change the property dynamically in interface builder
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.3820682402, green: 0.6109122244, blue: 1, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1088973102, green: 0.3788644763, blue: 1, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    //need to say what happens after the colors are set
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        
        //gradient layer properties
        //colors included in this gradient
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        
        //start and end points of the gradient - think of the normalized coordinate system - (0,0) is the top left corner (origin), and (1,1) would be the bottom right.
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        
        //tell the graident what size the view will be
        gradientLayer.frame = self.bounds
        
        //add this gradient layer to the UIviews layer. 0 is the first layer (index 0).
        self.layer.insertSublayer(gradientLayer, at: 0)
        
    }
    
 
    

}
