//
//  ViewController.swift
//  NavigationControllerTask2
//
//  Created by Матвей Кашин on 09.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var inputTextField: UITextField!
    
    private let main = UIStoryboard(name: "Main", bundle: nil)
    private let presentVCIdentifier = "PresentVC"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputTextField.delegate = self
    }

    @IBAction private func didPressedRedButton(_ sender: Any) {
        didPressedPushVC(color: .red)
    }
    
    @IBAction private func didPressedGreenButton(_ sender: Any) {
        didPressedPushVC(color: .green)
    }
    @IBAction private func didPressedBlueButton(_ sender: Any) {
        didPressedPushVC(color: .blue)
    }
    
    private func didPressedPushVC(color: UIColor) {
        
        if let presentVC = main.instantiateViewController(identifier: presentVCIdentifier) as? PresentViewController {

            presentVC.savedTextFromVC = inputTextField.text
            presentVC.backgroundColor = color
            presentVC.textSender = {text in
                self.inputTextField.text = text
            }
            navigationController?.pushViewController(presentVC, animated: true)
        }
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
