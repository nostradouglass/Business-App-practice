//
//  ServicesViewController.swift
//  Business App practice
//
//  Created by Kelly Douglass on 2/7/19.
//  Copyright © 2019 Kelly Douglass. All rights reserved.
//

import UIKit

class ServicesViewController: UIViewController {

    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var detailTextView: UITextView!
    @IBOutlet weak var detailImageView: UIImageView!
    
    
    
    var sentData1: String!
    var sentData2: String!
    var sentData3: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = sentData1
        
        detailLabel.text = sentData1
        detailTextView.text = sentData2
        detailImageView.image = UIImage(named: sentData3)
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
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
