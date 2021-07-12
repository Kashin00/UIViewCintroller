//
//  ViewController.swift
//  NavigationControllerTask3
//
//  Created by Матвей Кашин on 11.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func didPressedPushVC(_ sender: Any) {
        
        guard let secondVC = storyboard?.instantiateViewController(identifier: String(describing: SecondViewController.self)) as? SecondViewController else { return }
        
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @IBAction func didPressedModalVC(_ sender: Any) {
        
        guard let thirdVC = storyboard?.instantiateViewController(identifier: String(describing: ThirdViewController.self)) as? ThirdViewController else { return }
        
        navigationController?.present(thirdVC, animated: true)
    }
    
    
}

