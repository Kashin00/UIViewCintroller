//
//  PresentViewController.swift
//  NavigationControllerTask2
//
//  Created by Матвей Кашин on 09.07.2021.
//

import UIKit

class PresentViewController: UIViewController {

    @IBOutlet weak private var inputTextField: UITextField!
    @IBOutlet weak private var textLabel: UILabel!
    
    var savedTextFromVC: String?
    var textSender: ((_ text: String?) -> Void)?
    var backgroundColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        inputTextField.text = savedTextFromVC
        textLabel.text = savedTextFromVC
        view.backgroundColor = backgroundColor
        
        inputTextField.delegate = self
    }
}

extension PresentViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        textSender?(inputTextField.text)
        navigationController?.popViewController(animated: true)
        return true
    }
}
