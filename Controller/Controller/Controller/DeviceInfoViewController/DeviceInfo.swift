//
//  DeviceInfo.swift
//  Controller
//
//  Created by Матвей Кашин on 13.07.2021.
//

import UIKit

@IBDesignable
class DeviceInfo: UIView {

    @IBOutlet weak private var deviceImageView: UIImageView!
    @IBOutlet weak private var infoTextField: UITextField!
    @IBOutlet weak private var modelLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpView()
    }
    
    private func setUpView() {

        let xibView = loadViewFromXib()
        xibView.frame = self.bounds
        xibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(xibView)
    }
    
    private func loadViewFromXib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "DeviceInfoXib", bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil)[0] as! UIView
    }
    
    public func setUpViewWithData(deviceModel: DeviceModel) {
        
        deviceImageView.image = UIImage(named: deviceModel.imageName)
        modelLabel.text = deviceModel.devise.rawValue
        infoTextField.text = "PPi: \(deviceModel.ppi), Diagonal: \(deviceModel.diagonal) inch"
    }
    
    public func setUpNewPhoto(_ image: UIImage) {
        deviceImageView.image = image
    }
    
    
    public func returnIndoTextField() -> UITextField {
        
        let info = infoTextField ?? UITextField()
        return info
    }
    
    public func returnImage() -> UIImage {
        
        return deviceImageView.image ?? UIImage(named: "Unknown")!
    }
    
    
    
}

extension DeviceInfo: UITextFieldDelegate {
    
}
