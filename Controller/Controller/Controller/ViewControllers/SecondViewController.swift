//
//  SecondViewController.swift
//  Controller
//
//  Created by Матвей Кашин on 13.07.2021.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak private var deviceTableView: UITableView!
    private let idCell = String(describing: TableViewCell.self)
    private let heightForRow: CGFloat = 60
    private let numberOfSection = 2

    override func viewDidLoad() {
        super.viewDidLoad()

        deviceTableView.delegate = self
        deviceTableView.dataSource = self
        deviceTableView.register(UINib(nibName: String(describing: TableViewCell.self), bundle: nil), forCellReuseIdentifier: idCell)
    }
}

extension SecondViewController: UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return numberOfSection
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightForRow
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let getTitleForIpad = DeviceType.getTitle(for: .ipad)
        let getTitleForIphone = DeviceType.getTitle(for: .iphone)

        let headerView = HeaderView()
        switch section {
        case DeviceType.iphone.rawValue:
            headerView.setUpUI(title: getTitleForIphone)
        case DeviceType.ipad.rawValue:
            headerView.setUpUI(title: getTitleForIpad)
        default:
            break
        }
        return headerView
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let infoVC = storyboard?.instantiateViewController(identifier: String(describing: DeviceInfoViewController.self)) as? DeviceInfoViewController else { return }

        deviceTableView.deselectRow(at: indexPath, animated: true)
        
        let currentIphone = iPhoneArray[indexPath.row].devise
        let currentIpad = iPadArray[indexPath.row].devise

        
        switch indexPath.section {

        case DeviceType.iphone.rawValue:
            infoVC.deviceModel = iPhoneArray[indexPath.row]
        case DeviceType.ipad.rawValue:
            infoVC.deviceModel = iPadArray[indexPath.row]
        default:
            break
        }

        infoVC.dataFromDeviceVC = {(info, image) in
            
            switch indexPath.section {

            case DeviceType.iphone.rawValue:
                let nevDevice = DeviceModel(devise: currentIphone, info: info, image: image)
                iPhoneArray[indexPath.row] = nevDevice
                tableView.reloadData()
            case DeviceType.ipad.rawValue:
                let nevDevice = DeviceModel(devise: currentIpad, info: info, image: image)
                iPadArray[indexPath.row] = nevDevice
                tableView.reloadData()
            default:
                break
            }
        }

        navigationController?.pushViewController(infoVC, animated: true)
    }

    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .delete
    }
}

extension SecondViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        switch section {
        case DeviceType.iphone.rawValue:
            return iPhoneArray.count
        case DeviceType.ipad.rawValue:
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

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {

        switch editingStyle {

        case .delete:
            switch indexPath.section {
            case DeviceType.iphone.rawValue:
                iPhoneArray.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .left)
                
            case DeviceType.ipad.rawValue:
                iPadArray.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .left)
                
            default:
                break
            }

        default:
            break
        }
    }
}

private extension SecondViewController {

    enum DeviceType: Int {

        case iphone
        case ipad

        static func getTitle(for device:DeviceType ) -> String {

            switch device {
            case .iphone:
                return "iPhone"
            case .ipad:
                return "iPad"
            }
        }
    }
}
