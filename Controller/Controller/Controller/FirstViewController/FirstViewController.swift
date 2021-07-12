//
//  FirstViewController.swift
//  Controller
//
//  Created by Матвей Кашин on 12.07.2021.
//

import UIKit

class FirstViewController: UIViewController {

    private let idCell = "FirstCell"
    
    @IBOutlet weak private var deviceTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        deviceTableView.register(UINib(nibName: "FirstTableViewCell", bundle: nil), forCellReuseIdentifier: idCell)
    }
}

extension FirstViewController: UITableViewDelegate, UITableViewDataSource {
 
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allDevices.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: idCell) as? FirstTableViewCell else { return UITableViewCell() }
        
        let currentElement = allDevices[indexPath.row]
        cell.deviceModel = currentElement
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        guard let cell = tableView.dequeueReusableCell(withIdentifier: idCell) as? FirstTableViewCell else { return }
        guard let infoVC = storyboard?.instantiateViewController(identifier: String(describing: DeviceInfoViewController.self)) as? DeviceInfoViewController else { return }
       
            let currentElement = allDevices[indexPath.row]
        infoVC.deviceInfoClosure = {
            cell.deviceModel = $0
        }
        infoVC.deviceModel = currentElement
            navigationController?.pushViewController(infoVC, animated: true)
        
        }
    }

protocol FirstViewControllerDelegate {
    func update(modelName: String, info: String, imageName: String)
}

extension FirstViewController: FirstViewControllerDelegate {
    func update(modelName: String, info: String, imageName: String) {

    }
}
