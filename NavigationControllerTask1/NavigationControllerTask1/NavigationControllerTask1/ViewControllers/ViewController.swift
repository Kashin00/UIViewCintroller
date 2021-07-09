//
//  ViewController.swift
//  NavigationControllerTask1
//
//  Created by Матвей Кашин on 09.07.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction private func goToSecondVCTouchUpInside(_ sender: Any) {
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = main.instantiateViewController(identifier: "SecondVC") as! SecondViewController
        
        self.navigationController?.pushViewController(secondVC, animated: true)
        
      
    }
    
    @IBAction private func goToThirdVCTouchUpInside(_ sender: Any) {
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        let thirdVC = main.instantiateViewController(identifier: "ThirdVC") as! ThirdViewController
                
        present(thirdVC, animated: true, completion: nil)
    }
    
    
    @IBAction private func goToFourthVCTouchUoInside(_ sender: Any) {
        
        let fourthVC = storyboard?.instantiateViewController(identifier: "FourthVC") as! FourthViewController
        let navController = UINavigationController(rootViewController: fourthVC)
        navController.modalPresentationStyle = .fullScreen
        navigationController?.present(navController, animated: true, completion: nil)
    }
}

