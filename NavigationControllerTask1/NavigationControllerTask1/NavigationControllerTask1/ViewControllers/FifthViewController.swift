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
    
    @IBAction func goToPrevScreenYouchUpInside(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
}
