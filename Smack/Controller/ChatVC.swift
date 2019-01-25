//
//  ChatVC.swift
//  Smack
//
//  Created by David Sadler on 1/25/19.
//  Copyright © 2019 David Sadler. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    //MARK: - Outlets
    
    @IBOutlet weak var menuButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //this is a way of adding functionality to our outlet - UIcontol.event we ususally use touch up inside. selector - a way of saying this is a method we are going to evnvoke - here is from the SW reveal file and the method reveal Toggle.
        menuButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        //This is a way of addding functionaliity of swiping the menu out from the side rather than hitting the menu button - this functionality comes entirely from the methods contained in the SWRevealVC.
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())


    }


}
