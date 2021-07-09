//
//  FourthViewController.swift
//  NavigationControllerTask1
//
//  Created by Матвей Кашин on 09.07.2021.
//

import UIKit

class FourthViewController: UIViewController {

    private let identifier = "FifthVC"
    private let storyboardName = "Main"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction private func goToFifthVCYouchUpInside(_ sender: Any) {
        
        let main = UIStoryboard(name: storyboardName, bundle: nil)
        
        if let fiveViewController = main.instantiateViewController(identifier: identifier) as? FifthViewController {
            
            navigationController?.pushViewController(fiveViewController, animated: true)
        }
    }
    
    @IBAction private func goToPrevScreenYouchUpInside(_ sender: Any) {
        
        navigationController?.dismiss(animated: true, completion: nil)
    }
}
