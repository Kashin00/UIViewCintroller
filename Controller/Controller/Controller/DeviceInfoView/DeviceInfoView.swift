//
//  DeviceInfo.swift
//  Controller
//
//  Created by Матвей Кашин on 13.07.2021.
//

import UIKit

@IBDesignable
class DeviceInfoView: UIView {

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
    
    public func setUpViewWithData(deviceModel: DeviceModel) {
        
        modelLabel.text = deviceModel.devise.rawValue
        deviceImageView.image = deviceModel.image
        infoTextField.text = deviceModel.info
    }
    
    public func setUpNewPhoto(_ image: UIImage) {
        deviceImageView.image = image
    }
    
    public func returnTextField() -> UITextField  {
        
        let info = infoTextField ?? UITextField()
        return info
    }
    
    public func returnImage() -> UIImage {
        
        return deviceImageView.image ?? UIImage(named: "Unknown")!
    }
}

private extension DeviceInfoView {
    
    func setUpView() {

        let xibView = loadViewFromXib()
        xibView.frame = self.bounds
        xibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(xibView)
    }
    
     func loadViewFromXib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: DeviceInfoView.self), bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil)[0] as! UIView
    }
}
