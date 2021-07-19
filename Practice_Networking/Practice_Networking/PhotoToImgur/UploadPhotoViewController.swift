//
//  UploadPhotoViewController.swift
//  Practice_Networking
//
//  Created by Матвей Кашин on 16.07.2021.
//  Copyright © 2021 NIX Solitions. All rights reserved.
//

import UIKit

class UploadPhotoViewController: UIViewController {

    @IBOutlet weak private var selectedPhotoImageView: UIImageView!
    @IBOutlet weak private var uploadButton: UIButton!
    private var imagePicker = UIImagePickerController()
    private let clientId = "5af4a79c42ea7df"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker.delegate = self
        uploadButton.isHidden = true
    }
    

   
    @IBAction func selectImageDidPressed(_ sender: Any) {
        uploadPhotoAlert()
    }
    
    @IBAction func uploadImgurDidPressed(_ sender: Any) {
        
        uploadImageToImgur(image: selectedPhotoImageView.image ?? UIImage(named: "")!)
    }
    
    
}

// MARK: - UIImagePickerControllerDelegate
extension UploadPhotoViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
 
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[.originalImage] as? UIImage {
            selectedPhotoImageView.image = image
            self.uploadButton.isHidden = false
        }
        dismiss(animated: true, completion: nil)
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

private extension UploadPhotoViewController {
    func uploadPhotoAlert() {
        let alert = UIAlertController(title: "Upload photo", message: "", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Photo by gallery", style: .default, handler: { _ in
            
            self.imagePicker.sourceType = .photoLibrary
            self.imagePicker.allowsEditing = true
            self.imagePicker.modalPresentationStyle = .fullScreen
            self.present(self.imagePicker, animated: true, completion: nil)
            
        }))
        alert.addAction(UIAlertAction(title: "By camera", style: .default, handler: { _ in
            self.imagePicker.sourceType = .camera
            self.imagePicker.allowsEditing = true
            self.present(self.imagePicker, animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.pruneNegativeWidthConstraints()
        present(alert, animated: true, completion: nil)
    }
    
    func uploadImageToImgur(image: UIImage) {
        
        getBase64Image(image: image) { base64Image in
            let boundary = "Boundary-\(UUID().uuidString)"

                     var request = URLRequest(url: URL(string: "https://api.imgur.com/3/image")!)
                     request.addValue("Client-ID \(self.clientId)", forHTTPHeaderField: "Authorization")
                     request.httpMethod = "POST"

                     var body = ""
                     body += "--\(boundary)\r\n"
                     body += "Content-Disposition:form-data; name=\"image\""
                     body += "\r\n\r\n\(base64Image ?? "")\r\n"
                     body += "--\(boundary)--\r\n"
                     let postData = body.data(using: .utf8)

                     request.httpBody = postData
        }
    }
    
    func getBase64Image(image: UIImage, complete: @escaping (String?) -> ()) {
            DispatchQueue.main.async {
                let imageData = image.pngData()
                let base64Image = imageData?.base64EncodedString(options: .lineLength64Characters)
                complete(base64Image)
            }
        }
}
