//
//  ViewController.swift
//  Practice_Networking
//
//  Created by anna on 8/15/19.
//  Copyright © 2019 NIX Solitions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var button: UIButton!
    private var dataArray = [DecodeModel]()
    private let stringUrl = "https://jsonplaceholder.typicode.com/posts"
    private let userMessage = UserMessage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func allDataDidPressed(_ sender: Any) {
        guard let allDataVC = self.storyboard?.instantiateViewController(identifier: String(describing: AllDataViewController.self)) as? AllDataViewController else {return}
        
        allDataVC.modelArray = dataArray
        navigationController?.pushViewController(allDataVC, animated: true)
    }
    
    @IBAction func getDidPressed(_ sender: Any) {
        callGetRequest()
    }
    
    @IBAction func postDidPressed(_ sender: Any) {
        callPostRequest()
    }
}
// MARK: - URLSessions
private extension ViewController {
    
    func callPostRequest() {
        guard let url = URL(string: stringUrl) else { return }

        let userData = ["Course": "Networking", "Task":"Get and Post Request"]
        
        var request = URLRequest(url: url)
        request.httpMethod = "Post"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        guard let httpBody = try? JSONSerialization.data(withJSONObject: userData, options: []) else { return }
        request.httpBody = httpBody
        
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            
            guard let response = response,
                  let data = data else { return }
            print(response)
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            }catch {
                self.errorAlert(error: error)
            }
        }.resume()
    }
    
    
    func callGetRequest() {

        guard let url = URL(string:stringUrl) else { return }

        URLSession.shared.dataTask(with: url) { (data, response, eroor) in
            guard let data = data else { return }

            do {
                self.dataArray = try JSONDecoder().decode([DecodeModel].self, from: data)
            } catch {
                self.errorAlert(error: error)
            }
        }.resume()
    }

    func errorAlert(error: Error) {
        
        let alert = UIAlertController(title: userMessage.error, message: "\(error)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: userMessage.cancel, style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
