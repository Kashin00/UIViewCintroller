//
//  DeviceInfoViewController.swift
//  Controller
//
//  Created by Матвей Кашин on 13.07.2021.
//

import UIKit

class DeviceInfoViewController: UIViewController, UINavigationControllerDelegate {
    
    @IBOutlet weak private var deviceView: DeviceInfo!

    private let userMessage = UserMessage.ActionSheet()
    private let imagePicker = UIImagePickerController()
    private var image:UIImage?
    private let unknownImage = UIImage(named: "Unknown")!

    
    var infoTextField = UITextField()
    
    var injectData: ((String, UIImage) -> ())?

    var deviceModel: DeviceModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let getInfoTextField = deviceView.returnIndoTextField()
        infoTextField = getInfoTextField
        image = deviceView.returnImage()

        createRightBarButtonItem()
        infoTextField.delegate = self
        imagePicker.delegate = self
        guard let deviceModel = deviceModel else { return }
        deviceView.setUpViewWithData(deviceModel: deviceModel)
    }
    
    private func createRightBarButtonItem() {
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(didPresedRightButtonItem))
    }
    
    @objc func didPresedRightButtonItem() {
        
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: userMessage.changePhoto, style: .default, handler: {_ in
            self.imagePicker.sourceType = .photoLibrary
            self.imagePicker.allowsEditing = true
            self.present(self.imagePicker, animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction(title: userMessage.cancel, style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}

extension DeviceInfoViewController: UIImagePickerControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        guard let selectedImage = info[.originalImage] as? UIImage
        else { return }

        deviceView.setUpNewPhoto(selectedImage)
        image = deviceView.returnImage()
        injectData?(infoTextField.text ?? "", image ?? unknownImage)

        dismiss(animated: true, completion: nil)
    }
}

extension DeviceInfoViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        infoTextField.resignFirstResponder()
        image = deviceView.returnImage()
        injectData?(infoTextField.text ?? "", image ?? unknownImage)
        return true
    }
}
