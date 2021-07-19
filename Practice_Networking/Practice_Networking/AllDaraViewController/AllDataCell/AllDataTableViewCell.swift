//
//  AllDataTableViewCell.swift
//  Practice_Networking
//
//  Created by Матвей Кашин on 15.07.2021.
//  Copyright © 2021 NIX Solitions. All rights reserved.
//

import UIKit

class AllDataTableViewCell: UITableViewCell {

    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var userIdLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
        
    public func setUpCell(user: Users) {
        idLabel.text = "Id: " + String(user.id)
        userIdLabel.text = "User ID: " + String(user.userId)
        bodyLabel.text = "Body: " + user.body
        titleLabel.text = "Title: " + user.title
    }
    

}
