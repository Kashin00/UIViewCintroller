//
//  FourthViewController.swift
//  NavigationControllerTask1
//
//  Created by Матвей Кашин on 09.07.2021.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction private func goToFifthVCYouchUpInside(_ sender: Any) {
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        let fiveViewController = main.instantiateViewController(identifier: "FifthVC") as! FifthViewController
        navigationController?.pushViewController(fiveViewController, animated: true)
    }
    
    @IBAction private func goToPrevScreenYouchUpInside(_ sender: Any) {
        
        navigationController?.dismiss(animated: true, completion: nil)
    }
}
