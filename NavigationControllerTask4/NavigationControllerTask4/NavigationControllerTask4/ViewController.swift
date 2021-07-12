//
//  ViewController.swift
//  NavigationControllerTask4
//
//  Created by Матвей Кашин on 12.07.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func didPressedSimpleAlertButton(_ sender: Any) {
        let alert = UIAlertController(title: "Sing out?",
                                      message: "You can always access your content by signing back in",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Sing out", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    
    }
    
    @IBAction func didPressedSimpleActionSheetButton(_ sender: Any) {
        let alert = UIAlertController(title: "Title", message: "Please, select an option", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Approve", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Edit", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: nil))
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func didPressedAlertWithDistractiveButton(_ sender: Any) {
        let alert = UIAlertController(title: "Title", message: "Please, select an option", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Sing out", style: .destructive, handler: nil))
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func didPressedAlertWithMoreButtons(_ sender: Any) {
        let alert = UIAlertController(title: "Title", message: "Please, select an option", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Sing out", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Destructive", style: .destructive, handler: nil))
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func didPressedAlertWithUITextField(_ sender: Any) {
        
        let alert = UIAlertController(title: "title", message: "message", preferredStyle: .alert)
        alert.addTextField(configurationHandler: nil)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}

