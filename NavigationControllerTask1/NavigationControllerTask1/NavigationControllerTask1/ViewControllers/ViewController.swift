//
//  ViewController.swift
//  NavigationControllerTask1
//
//  Created by Матвей Кашин on 09.07.2021.
//

import UIKit

class ViewController: UIViewController {

    private let main = UIStoryboard(name: "Main", bundle: nil)
    private let secondVCIdentifier = "SecondVC"
    private let thirdVCIdentidier = "ThirdVC"
    private let fourthVCIdentifier = "FourthVC"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction private func didPressedSecondVCButton(_ sender: Any) {
        
        if let secondVC = main.instantiateViewController(identifier: secondVCIdentifier) as? SecondViewController {
            self.navigationController?.pushViewController(secondVC, animated: true)
        }
    }
    
    @IBAction private func didPressedThirdVCButton(_ sender: Any) {
        
        if let thirdVC = main.instantiateViewController(identifier: thirdVCIdentidier) as?  ThirdViewController {
            present(thirdVC, animated: true, completion: nil)
        }
    }
    
    
    @IBAction private func didPressedFourthVCButton(_ sender: Any) {
        
        if let fourthVC = storyboard?.instantiateViewController(identifier: fourthVCIdentifier) as? FourthViewController {
            
            let navController = UINavigationController(rootViewController: fourthVC)
            navController.modalPresentationStyle = .fullScreen
            navigationController?.present(navController, animated: true, completion: nil)
        }
    }
}

