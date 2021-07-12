//
//  DeviceInfoViewController.swift
//  Controller
//
//  Created by Матвей Кашин on 12.07.2021.
//

import UIKit

class DeviceInfoViewController: UIViewController {
    @IBOutlet weak private var deviceImageView: UIImageView!
    @IBOutlet weak private var modelTextField: UITextField!
    @IBOutlet weak private var infoTextField: UITextField!
    
    private let userMessage = UserMessage.ActionSheet()
    
    var deviceInfoClosure: ((DeviceModel) -> ())?
    
    var deviceModel: DeviceModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let device = deviceModel else { return }
        modelTextField.text = device.devise.rawValue
        infoTextField.text = "PPI: \(device.ppi), Diagonal: \(device.diagonal) inch"
        deviceImageView.image = UIImage(named: device.imageName)
        modelTextField.delegate = self
        infoTextField.delegate = self
        createRightBarButtonItem()
    }
    
    private func createRightBarButtonItem() {
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(didPresedRightButtonItem))
    }
    
    @objc func didPresedRightButtonItem() {
        
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: userMessage.changePhoto, style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: userMessage.cancel, style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
   
}

extension DeviceInfoViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        modelTextField.resignFirstResponder()
        infoTextField.resignFirstResponder()

        
        return true
    }
}
