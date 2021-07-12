//
//  FourthViewController.swift
//  NavigationControllerTask3
//
//  Created by Матвей Кашин on 11.07.2021.
//

import UIKit

class FourthViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didPressedPushVC(_ sender: Any) {       
        
        guard let fifthVC = storyboard?.instantiateViewController(identifier: String(describing: FifthViewController.self)) as? FifthViewController else { return }
        
        navigationController?.pushViewController(fifthVC, animated: true)
    }
}
