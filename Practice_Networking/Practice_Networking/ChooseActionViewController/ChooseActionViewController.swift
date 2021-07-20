//
//  ViewController.swift
//  Practice_Networking
//
//  Created by anna on 8/15/19.
//  Copyright © 2019 NIX Solitions. All rights reserved.
//

import UIKit

class ChooseActionViewController: UIViewController {
    
    @IBAction func allDataDidPressed(_ sender: Any) {
        guard let allDataVC = self.storyboard?.instantiateViewController(identifier: String(describing: AllDataViewController.self)) as? AllDataViewController else {return}
        
        allDataVC.modelArray = dataArray
        navigationController?.pushViewController(allDataVC, animated: true)
    }
    
    @IBAction func getDidPressed(_ sender: Any) {
        NetworkManager.shared().callGetRequest()
    }
    
    @IBAction func postDidPressed(_ sender: Any) {
        NetworkManager.shared().callPostRequest()
    }
}
