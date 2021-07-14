//
//  FirstViewController.swift
//  Controller
//
//  Created by Матвей Кашин on 12.07.2021.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak private var deviceTableView: UITableView!
    private let idCell = String(describing: TableViewCell.self)
    private let heightForRow: CGFloat = 60

    override func viewDidLoad() {
        super.viewDidLoad()

        deviceTableView.register(UINib(nibName: String(describing: TableViewCell.self), bundle: nil), forCellReuseIdentifier: idCell)
    }
}

extension FirstViewController: UITableViewDelegate {
 
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightForRow
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let infoVC = storyboard?.instantiateViewController(identifier: String(describing: DeviceInfoViewController.self)) as? DeviceInfoViewController else { return }
        
        deviceTableView.deselectRow(at: indexPath, animated: true)
        let currentElement = allDevices[indexPath.row]
        let currentDevice = allDevices[indexPath.row].devise
        infoVC.deviceModel = currentElement
        
        infoVC.dataFromDeviceVC = {(info, image) in
            let newDevice = DeviceModel(devise: currentDevice, info: info, image: image)
            allDevices[indexPath.row] = newDevice
            tableView.reloadData()
        }
        navigationController?.pushViewController(infoVC, animated: true)
    }
}

extension FirstViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allDevices.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: idCell) as? TableViewCell
        else { return UITableViewCell() }
        
        let currentElement = allDevices[indexPath.row]
        cell.deviceModel = currentElement
        cell.accessoryType = .disclosureIndicator
        return cell
    }
}
