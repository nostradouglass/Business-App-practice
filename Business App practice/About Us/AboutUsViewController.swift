//
//  AboutUsViewController.swift
//  Business App practice
//
//  Created by Kelly Douglass on 2/7/19.
//  Copyright © 2019 Kelly Douglass. All rights reserved.
//

import UIKit

class AboutUsViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        button1.layer.cornerRadius = 5
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func contactUs(_ sender: Any) {
        self.tabBarController?.selectedIndex = 4
    }
    
}
