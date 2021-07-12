//
//  FifthViewController.swift
//  NavigationControllerTask3
//
//  Created by Матвей Кашин on 11.07.2021.
//

import UIKit

class FifthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func didPressedButton(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
    }
}
