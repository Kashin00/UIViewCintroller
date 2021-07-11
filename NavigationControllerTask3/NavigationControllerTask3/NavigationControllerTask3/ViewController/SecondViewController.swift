//
//  SecondViewController.swift
//  NavigationControllerTask3
//
//  Created by Матвей Кашин on 11.07.2021.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func didPressedButton(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
    }
}
