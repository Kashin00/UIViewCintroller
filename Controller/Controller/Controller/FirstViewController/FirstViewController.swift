//
//  FirstViewController.swift
//  Controller
//
//  Created by Матвей Кашин on 12.07.2021.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak private var deviceTableView: UITableView!

    private let idCell = "FirstCell"

    override func viewDidLoad() {
        print("TTTT", String(describing: TableViewCell.self))
        super.viewDidLoad()
        deviceTableView.register(UINib(nibName: String(describing: TableViewCell.self), bundle: nil), forCellReuseIdentifier: idCell)
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: idCell) as? TableViewCell else { return UITableViewCell() }
        
        let currentElement = allDevices[indexPath.row]
        cell.deviceModel = currentElement
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let infoVC = storyboard?.instantiateViewController(identifier: String(describing: DeviceInfoViewController.self)) as? DeviceInfoViewController else { return }
        deviceTableView.resignFirstResponder()
        let currentElement = allDevices[indexPath.row]
        
        infoVC.deviceModel = currentElement
        
        infoVC.injectData = {(info, image) in
            
            guard let cell = tableView.cellForRow(at: indexPath) as? TableViewCell else{return}
            cell.update(string: info, image: image)
        }
        navigationController?.pushViewController(infoVC, animated: true)
    }
}
