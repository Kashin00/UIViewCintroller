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
    
    @IBAction func goToFifthVCYouchUpInside(_ sender: Any) {
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        let fifthVC = main.instantiateViewController(identifier: "FifthVC") as! FifthViewController
        present(fifthVC, animated: true, completion: nil)
        
    }
    
    @IBAction func goToPrevScreenYouchUpInside(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
}