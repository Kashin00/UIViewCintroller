//
//  AllDataTableViewCell.swift
//  Practice_Networking
//
//  Created by Матвей Кашин on 15.07.2021.
//  Copyright © 2021 NIX Solitions. All rights reserved.
//

import UIKit

class AllDataTableViewCell: UITableViewCell {

    @IBOutlet weak private var idLabel: UILabel!
    @IBOutlet weak private var userIdLabel: UILabel!
    @IBOutlet weak private var bodyLabel: UILabel!
    @IBOutlet weak private var titleLabel: UILabel!
        
    public func setUpCell(user: DecodeModel) {
        idLabel.text = "Id: " + String(user.id)
        userIdLabel.text = "User ID: " + String(user.userId)
        bodyLabel.text = "Body: " + user.body
        titleLabel.text = "Title: " + user.title
    }
}


