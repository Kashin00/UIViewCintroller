//
//  AllDataViewController.swift
//  Practice_Networking
//
//  Created by Матвей Кашин on 15.07.2021.
//  Copyright © 2021 NIX Solitions. All rights reserved.
//

import UIKit

class AllDataViewController: UIViewController {

    @IBOutlet weak var dataTableView: UITableView!
    
    private let heightForRow = CGFloat(140)
    public var userArray = [Users]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataTableView.delegate = self
        dataTableView.dataSource = self
    }
}

extension AllDataViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dataTableView.deselectRow(at: indexPath, animated: true)
    }
    
}

extension AllDataViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightForRow
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AllDataTableViewCell", for: indexPath) as? AllDataTableViewCell else { return UITableViewCell() }
        
        let currentElement = userArray[indexPath.row]
        cell.setUpCell(user: currentElement)
        return cell
    }
}
