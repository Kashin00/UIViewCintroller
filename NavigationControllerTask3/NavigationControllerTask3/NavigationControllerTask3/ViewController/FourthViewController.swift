//
//  FourthViewController.swift
//  NavigationControllerTask3
//
//  Created by Матвей Кашин on 11.07.2021.
//

import UIKit

class FourthViewController: UIViewController {

    private let main = UIStoryboard(name: "Main", bundle: nil)
    private let fifthVCIdentifier = "fifthVC"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func didPressedPushVC(_ sender: Any) {
        
        if let fifthVC = main.instantiateViewController(identifier: fifthVCIdentifier) as? FifthViewController {
            
            self.navigationController?.pushViewController(fifthVC, animated: true)
        }
    }
}
