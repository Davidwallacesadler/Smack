//
//  ChannelVC.swift
//  Smack
//
//  Created by David Sadler on 1/25/19.
//  Copyright © 2019 David Sadler. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    
    //MARK: - Outlets
    
    //We want this label to update to the users name
    @IBOutlet weak var loginButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //customize the rear view reveal width
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 60

    }
    
    //MARK: - Actions
    
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
}
