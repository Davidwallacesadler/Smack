//
//  ChannelVC.swift
//  Smack
//
//  Created by David Sadler on 1/25/19.
//  Copyright © 2019 David Sadler. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //customize the rear view reveal width
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 60

    }
    

}
