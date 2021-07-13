//
//  FirstTableViewCell.swift
//  Controller
//
//  Created by Матвей Кашин on 12.07.2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak private var nameLabel: UILabel!
    @IBOutlet weak  var infoLabel: UILabel!
    @IBOutlet weak private var deviceImageView: UIImageView!
    
    var deviceModel: DeviceModel? {

        didSet {
            guard let device = deviceModel else { return }

            nameLabel.text = device.devise.rawValue
            infoLabel.text = "PPI: \(device.ppi), Diagonal: \(device.diagonal) inch"
            deviceImageView.image = UIImage(named: device.imageName)
        }
    }
    
    func update(string: String, image: UIImage) {
        infoLabel.text = string
        deviceImageView.image = image
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
