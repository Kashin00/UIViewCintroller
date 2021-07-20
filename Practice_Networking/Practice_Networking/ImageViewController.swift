//
//  ImageViewController.swift
//  Practice_Networking
//
//  Created by Матвей Кашин on 15.07.2021.
//  Copyright © 2021 NIX Solitions. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var dataSender: Data?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true
        downloadImage()
    }

    private func downloadImage() {
        guard let url = URL(string: "https://i.imgur.com/9GowuyL.jpeg") else {return}
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data, let image = UIImage(data: data) {

                DispatchQueue.main.async {
                    self.imageView.image = image
                    self.activityIndicator.stopAnimating()
                }
            }
        }.resume()
    }
}
