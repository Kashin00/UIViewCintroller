//
//  NetworkManager.swift
//  Practice_Networking
//
//  Created by Матвей Кашин on 15.07.2021.
//  Copyright © 2021 NIX Solitions. All rights reserved.
//

import Foundation
import UIKit

public var dataArray = [DecodeModel]()

class NetworkManager {
    
    private static var uniqueInstance: NetworkManager?
    private let userMessage = UserMessage()
    private let stringUrl = "https://jsonplaceholder.typicode.com/posts"

    private init() { }
    
    static func shared() -> NetworkManager {
        if uniqueInstance == nil {
            uniqueInstance = NetworkManager()
        }
        return uniqueInstance!
    }
    
    func callPostRequest() {
        guard let url = URL(string: stringUrl) else { return }

        let userData = ["Course": "Networking", "Task":"Get and Post Request"]
        
        var request = URLRequest(url: url)
        request.httpMethod = RequestType.post.rawValue
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        guard let httpBody = try? JSONSerialization.data(withJSONObject: userData, options: []) else { return }
        request.httpBody = httpBody
        
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            
            guard let data = data else { return }
            
            do {
                try JSONSerialization.jsonObject(with: data, options: [])
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
                dataArray = try JSONDecoder().decode([DecodeModel].self, from: data)
            } catch {
                self.errorAlert(error: error)
            }
        }.resume()
    }
    
    
    
    func errorAlert(error: Error) {
        
        let alert = UIAlertController(title: userMessage.error, message: "\(error)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: userMessage.cancel, style: .cancel, handler: nil))
//        present(alert, animated: true, completion: nil)
    }
}

