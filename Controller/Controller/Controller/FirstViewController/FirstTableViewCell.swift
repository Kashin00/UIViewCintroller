//
//  FirstTableViewCell.swift
//  Controller
//
//  Created by Матвей Кашин on 12.07.2021.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    @IBOutlet weak private var nameTitle: UILabel!
    
    @IBOutlet weak private var infoTitle: UILabel!
    
    @IBOutlet weak private var deviceImageView: UIImageView!
    
    var deviceModel: DeviceModel? {

        didSet {
            guard let device = deviceModel else { return }

            nameTitle.text = device.devise.rawValue
            infoTitle.text = "PPI: \(device.ppi), Diagonal: \(device.diagonal) inch"
            deviceImageView.image = UIImage(named: device.imageName)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
