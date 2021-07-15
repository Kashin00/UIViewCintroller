//
//  DeviceInfoViewController.swift
//  Controller
//
//  Created by Матвей Кашин on 13.07.2021.
//

import UIKit

class DeviceInfoViewController: UIViewController, UINavigationControllerDelegate {
    
    @IBOutlet weak private var deviceView: DeviceInfoView!

    private let userMessage = UserMessage.ActionSheet()
    private let imagePicker = UIImagePickerController()
    private var image:UIImage?
    private let unknownImage = UIImage(named: "Unknown")!
    
    var dataFromDeviceVC: ((String, UIImage) -> ())?
    var deviceModel: DeviceModel?
    
    var textFromTextField: String?
    var testImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        dataFromDeviceVC?(deviceView.text , deviceView.image ?? UIImage(named: "Unknown")!)
    }
}

extension DeviceInfoViewController: UIImagePickerControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        guard let selectedImage = info[.originalImage] as? UIImage
        else { return }
      
        deviceView.setUpNewPhoto(selectedImage)
        image = selectedImage
        deviceView.image = selectedImage
        dataFromDeviceVC?(textFromTextField ?? "", image ?? unknownImage)

        dismiss(animated: true, completion: nil)
    }
}

private extension DeviceInfoViewController {
    
    func setUpUI() {
        
        image = deviceView.returnImage()

        createRightBarButtonItem()
        imagePicker.delegate = self
        
        guard let deviceModel = deviceModel else { return }
        deviceView.setUpViewWithData(deviceModel: deviceModel)
        
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil) { _ in
            self.view.frame.origin.y = -120
        }
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: nil) { _ in
            self.view.frame.origin.y = 0.0
        }
    }
    
     func createRightBarButtonItem() {
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(didPresedRightButtonItem))
    }
    
    @objc func didPresedRightButtonItem() {
        
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: userMessage.changePhoto, style: .default, handler: {_ in
            self.imagePicker.sourceType = .photoLibrary
            self.imagePicker.allowsEditing = true
            self.present(self.imagePicker, animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction(title: userMessage.camera, style: .default, handler: { _ in
            self.imagePicker.sourceType = .camera
            self.imagePicker.allowsEditing = true
            self.present(self.imagePicker, animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction(title: userMessage.cancel, style: .cancel, handler: nil))
        alert.pruneNegativeWidthConstraints()
        present(alert, animated: true, completion: nil)
    }
}

extension UIAlertController {
    func pruneNegativeWidthConstraints() {
        for subView in self.view.subviews {
            for constraint in subView.constraints where constraint.debugDescription.contains("width == - 16") {
                subView.removeConstraint(constraint)
            }
        }
    }
}
