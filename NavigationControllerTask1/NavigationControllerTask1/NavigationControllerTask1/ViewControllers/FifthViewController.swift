//
//  FifthViewController.swift
//  NavigationControllerTask1
//
//  Created by Матвей Кашин on 09.07.2021.
//

import UIKit

class FifthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction private func didPressedPrevVCButton(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
    }
}
