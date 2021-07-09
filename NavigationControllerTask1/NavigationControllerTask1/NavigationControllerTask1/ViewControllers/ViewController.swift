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
        // Do any additional setup after loading the view.
    }

    @IBAction func goToSecondVCTouchUpInside(_ sender: Any) {
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = main.instantiateViewController(identifier: "SecondVC") as! SecondViewController
        
        self.navigationController?.pushViewController(secondVC, animated: true)
        
      
    }
    
    @IBAction func goToThirdVCTouchUpInside(_ sender: Any) {
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        let thirdVC = main.instantiateViewController(identifier: "ThirdVC") as! ThirdViewController
                
        present(thirdVC, animated: true, completion: nil)
    }
    
    
    @IBAction func goToFourthVCTouchUoInside(_ sender: Any) {
        
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        let fourthVC = main.instantiateViewController(identifier: "FourthVC") as! FourthViewController
//        navigationController?.pushViewController(fourthVC, animated: true)
        present(fourthVC, animated: true, completion: nil)
        
    }
}

