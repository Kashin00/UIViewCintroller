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
    private var userArray = [Users]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func allDataDidPressed(_ sender: Any) {
        guard let allDataVC = self.storyboard?.instantiateViewController(identifier: String(describing: AllDataViewController.self)) as? AllDataViewController else {return}
        
        allDataVC.userArray = userArray
        navigationController?.pushViewController(allDataVC, animated: true)
    }
    
    @IBAction func getDidPressed(_ sender: Any) {
//        callGetRequest()
        jsonDecoder()
    }
    
    @IBAction func postDidPressed(_ sender: Any) {
        callPostRequest()
    }
}
// MARK: - URLSessions
private extension ViewController {
    
    func callGetRequest() {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
    
        let session =  URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            guard let response = response,
                  let data = data else { return }
            
            print(response)
            print(data)
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            } catch {
                print(error)
            }
        }.resume()
    }
    
    func callPostRequest() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }

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
                print(error)
            }
        }.resume()
    }
    
    
    func jsonDecoder() {

        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }

        URLSession.shared.dataTask(with: url) { (data, response, eroor) in
            guard let data = data else { return }

            do {
                let users = try JSONDecoder().decode([Users].self, from: data)

                users.forEach {
                    self.userArray.append($0)
                }
            } catch {
                print("Error: \(error)")
            }
        }.resume()
    }
}
