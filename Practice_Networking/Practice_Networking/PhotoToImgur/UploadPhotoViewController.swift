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
    private var backgroundTask: UIBackgroundTaskIdentifier = .invalid
    private let userMessage = UserMessage()
    private let requestURL = URL(string: "https://api.imgur.com/3/image") ??  URL(string: "")!

    
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
            
            let imageData = image.jpegData(compressionQuality: 1.0)
            let qualityLim = 10000000.0
            
            guard let data = imageData else { return }
            
            if Double(data.count) < qualityLim {

                selectedPhotoImageView.image = image
                self.uploadButton.isHidden = false
            }
        }
        self.registerBackgroundTask()
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
        let alert = UIAlertController(title: userMessage.uploadPhoto, message: "", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: userMessage.byGallery, style: .default, handler: { _ in
            
            self.imagePicker.sourceType = .photoLibrary
            self.imagePicker.allowsEditing = true
            self.imagePicker.modalPresentationStyle = .fullScreen
            self.present(self.imagePicker, animated: true, completion: nil)
            
        }))
        alert.addAction(UIAlertAction(title: userMessage.byCam, style: .default, handler: { _ in
            self.imagePicker.sourceType = .camera
            self.imagePicker.allowsEditing = true
            self.present(self.imagePicker, animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction(title: userMessage.cancel, style: .cancel, handler: nil))
        alert.pruneNegativeWidthConstraints()
        present(alert, animated: true, completion: nil)
    }
    
    func uploadImageToImgur(image: UIImage) {
        
        getBase64Image(image: image) { base64Image in
            let boundary = "Boundary-\(UUID().uuidString)"

            var request = URLRequest(url: self.requestURL)
                     request.addValue("Client-ID \(self.clientId)", forHTTPHeaderField: "Authorization")
            request.httpMethod = RequestType.post.rawValue

                     var body = ""
                     body += "--\(boundary)\r\n"
                     body += "Content-Disposition:form-data; name=\"image\""
                     body += "\r\n\r\n\(base64Image ?? "")\r\n"
                     body += "--\(boundary)--\r\n"
                     let postData = body.data(using: .utf8)

                     request.httpBody = postData

            URLSession.shared.dataTask(with: request) { (data, response, erroe) in
                guard let response = response,
                      let data = data else { return }
                print(response)
                
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                }catch {
                    self.errorAlert(error: error)
                }
                self.endBackgroundTask()
            }.resume()
        }
    }
    
    func getBase64Image(image: UIImage, complete: @escaping (String?) -> ()) {
            DispatchQueue.main.async {
                let imageData = image.pngData()
                let base64Image = imageData?.base64EncodedString(options: .lineLength64Characters)
                complete(base64Image)
            }
        }
    
    func registerBackgroundTask() {
      backgroundTask = UIApplication.shared.beginBackgroundTask { [weak self] in
        self?.endBackgroundTask()
      }
      assert(backgroundTask != .invalid)
    }
      
    func endBackgroundTask() {
      UIApplication.shared.endBackgroundTask(backgroundTask)
      backgroundTask = .invalid
    }
    
    func errorAlert(error: Error) {
        
        let alert = UIAlertController(title: userMessage.error, message: "\(error)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: userMessage.cancel, style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
