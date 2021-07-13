//
//  SecondViewController.swift
//  Controller
//
//  Created by Матвей Кашин on 13.07.2021.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak private var deviceTableView: UITableView!
    private let idCell = "FirstCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        deviceTableView.delegate = self
        deviceTableView.dataSource = self
        deviceTableView.register(UINib(nibName: String(describing: TableViewCell.self), bundle: nil), forCellReuseIdentifier: idCell)
    }
}

extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return iPhoneArray.count
        case 1:
            return iPadArray.count
        default:
            break
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: idCell) as? TableViewCell else { return UITableViewCell() }

        cell.accessoryType = .disclosureIndicator

        switch indexPath.section {
        case 0:
            cell.deviceModel = iPhoneArray[indexPath.row]
        case 1:
            cell.deviceModel = iPadArray[indexPath.row]
        default:
            break
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = HeaderView()
        
        switch section {
        case 0:
            headerView.titleLabel.text = "iPhone"
        case 1:
            headerView.titleLabel.text = "iPad"
        default:
            break
        }

        return headerView
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let infoVC = storyboard?.instantiateViewController(identifier: String(describing: DeviceInfoViewController.self)) as? DeviceInfoViewController else { return }
        deviceTableView.resignFirstResponder()
        
        switch indexPath.section {
        
        case 0:
            infoVC.deviceModel = iPhoneArray[indexPath.row]
        case 1:
            infoVC.deviceModel = iPadArray[indexPath.row]
        default:
            break
        }
        
        infoVC.injectData = {(info, image) in
            
            guard let cell = tableView.cellForRow(at: indexPath) as? TableViewCell else{return}
            cell.update(string: info, image: image)
        }
        
        navigationController?.pushViewController(infoVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            if indexPath.section == 0 {
                iPhoneArray.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .left)
            } else if indexPath.section == 1 {
                iPadArray.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .left)
            }
            
            
        }
    }
}
