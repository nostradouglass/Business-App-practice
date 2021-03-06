//
//  ViewController.swift
//  Business App practice
//
//  Created by Kelly Douglass on 2/7/19.
//  Copyright © 2019 Kelly Douglass. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button1.layer.cornerRadius = 5
        button2.layer.cornerRadius = 5
        button3.layer.cornerRadius = 5
        button4.layer.cornerRadius = 5
        button5.layer.cornerRadius = 5
        
    }
    
    @IBAction func services(_ sender: Any) {
        self.tabBarController?.selectedIndex = 2
    }
    
    @IBAction func portfolio(_ sender: Any) {
        self.tabBarController?.selectedIndex = 3
    }
    
    @IBAction func aboutUs(_ sender: Any) {
        self.tabBarController?.selectedIndex = 1
    }
    @IBAction func contactUs(_ sender: Any) {
        self.tabBarController?.selectedIndex = 4
    }
    
}

