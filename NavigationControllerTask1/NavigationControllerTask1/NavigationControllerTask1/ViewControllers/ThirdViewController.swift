//
//  ThirdViewController.swift
//  NavigationControllerTask1
//
//  Created by Матвей Кашин on 09.07.2021.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction private func didPressedPrevVCButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
}
