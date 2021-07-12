//
//  ViewController.swift
//  NavigationControllerTask4
//
//  Created by Матвей Кашин on 12.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private let message = UserMessages()
    private let singOutMessage = UserMessages.SingOut()
    private let actionSheetMessage = UserMessages.ActionSheet()
    private let textFieldMessage = UserMessages.TextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func didPressedSimpleAlertButton(_ sender: Any) {
        
        let alert = UIAlertController(title: singOutMessage.title,
                                      message: singOutMessage.message,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: message.cancelTitle, style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: message.singOutTitle, style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    
    }
    
    @IBAction func didPressedSimpleActionSheetButton(_ sender: Any) {
        
        let alert = UIAlertController(title: actionSheetMessage.title,
                                      message: actionSheetMessage.message,
                                      preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: message.approveTitle, style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: message.editTitle, style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: message.deleteTitle, style: .destructive, handler: nil))
        alert.addAction(UIAlertAction(title: message.dismissTitle, style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func didPressedAlertWithDistractiveButton(_ sender: Any) {
        
        let alert = UIAlertController(title: actionSheetMessage.title,
                                      message: actionSheetMessage.message,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: message.cancelTitle, style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: message.singOutTitle, style: .destructive, handler: nil))
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func didPressedAlertWithMoreButtons(_ sender: Any) {
        
        let alert = UIAlertController(title: actionSheetMessage.title,
                                      message: actionSheetMessage.message,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: message.cancelTitle, style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: message.singOutTitle, style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: message.dismissTitle, style: .destructive, handler: nil))
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func didPressedAlertWithUITextField(_ sender: Any) {
        
        let alert = UIAlertController(title: textFieldMessage.title,
                                      message: textFieldMessage.message,
                                      preferredStyle: .alert)
        alert.addTextField(configurationHandler: nil)
        alert.addAction(UIAlertAction(title: message.cancelTitle, style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}

