//
//  SocialTableViewCell.swift
//  Business App practice
//
//  Created by Kelly Douglass on 2/8/19.
//  Copyright © 2019 Kelly Douglass. All rights reserved.
//

import UIKit

class SocialTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
