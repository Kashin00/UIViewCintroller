//
//  FirstTableViewCell.swift
//  Controller
//
//  Created by Матвей Кашин on 12.07.2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak private var nameLabel: UILabel!
    @IBOutlet weak private var infoLabel: UILabel!
    @IBOutlet weak private var deviceImageView: UIImageView!
    
    public var deviceModel: DeviceModel? {

        didSet {
            guard let device = deviceModel else { return }
            nameLabel.text = device.devise.rawValue
            infoLabel.text = deviceModel?.info
            deviceImageView.image = device.image
        }
    }

}
