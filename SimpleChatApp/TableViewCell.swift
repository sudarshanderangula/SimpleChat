//
//  TableViewCell.swift
//  SimpleChatApp
//
//  Created by Sudarshan on 07/07/18.
//  Copyright © 2018 Sudarshan. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var label_Name: UILabel!
    @IBOutlet weak var label_Message: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView?.layer.cornerRadius = 24
        // Initialization code
    }

}
