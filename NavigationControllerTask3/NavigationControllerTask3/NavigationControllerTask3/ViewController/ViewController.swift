//
//  ViewController.swift
//  NavigationControllerTask3
//
//  Created by Матвей Кашин on 11.07.2021.
//

import UIKit

class ViewController: UIViewController {

    private let main = UIStoryboard(name: "Main", bundle: nil)
    private let secondVCIdentifier = "secondVC"
    private let thirdVCIdentifier = "thirdVC"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func didPressedPushVC(_ sender: Any) {
        
        if let secondVC = main.instantiateViewController(identifier: secondVCIdentifier) as? SecondViewController {
            
            self.navigationController?.pushViewController(secondVC, animated: true)
        }
         
    }
    
    @IBAction func didPressedModalVC(_ sender: Any) {
        
        if let thirdVC = main.instantiateViewController(identifier: thirdVCIdentifier) as? ThirdViewController {
            
            self.navigationController?.present(thirdVC, animated: true)
        }
    }
    
    
}

