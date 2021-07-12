//
//  Device.swift
//  Controller
//
//  Created by Матвей Кашин on 12.07.2021.
//

import Foundation

struct DeviceModel {

    let devise: Devices
    let destription: String
    let diagonal: Double
    let ppi: Int
    let imageName: String
}

enum Devices: String {
    
    case iPhone4s
    case iPhone5
    case iPhone5c
    case iPhone5s
    case iPhone6
    case iPhone6Plus
    case iPhone6s
    case iPhone6sPlus
    case iPhone7
    case iPhone7Plus
    case iPhoneSE
    case iPhone8
    case iPhone8Plus
    case iPhoneX
    case iPhoneXS
    case iPhoneXSMax
    case iPhoneXR
    case iPad5gen
    case iPad6gen
    case ipadAir3gen
    case ipadMini
    case ipadMini2
    case ipadMini3
    case ipadMini4
    case ipadMini5
    case ipadPro
    case ipadPro10
    case ipadPro11
    case ipad12_1gen
    case ipad12_2gen
    case ipad12_3gen
}

let destriptionDictionary: [Devices: String] = [.iPad5gen: "iPad (5th generation)", .iPad6gen: "iPad (6th generation)", .ipadAir3gen: "iPad Air 3", .ipadMini: "Ipad Mini", .ipadMini2: "iPad Mini 2", .ipadMini3: "iPad Mini 3", .ipadMini4: "Ipad Mini 4", .ipadMini5: "iPad Mini 5", .ipadPro: "iPad Pro", .ipadPro10: "iPad Pro 10", .ipadPro11: "iPad Pro 11", .ipad12_1gen: "iPad12 (1 generation)", .ipad12_2gen: "iPad12 (2 generation)", .ipad12_3gen: "iPad12 (3 generation)", .iPhone4s: "iPhone4s", .iPhone5: "iPhone 5", .iPhone5s: "iPhone 5s", .iPhone5c: "iPhone 5c", .iPhone6: "iPhone 6", .iPhone6Plus: "iPhone 6 Plus", .iPhone6s: "iPhone 6s", .iPhone6sPlus: "iPhone 6s Plus", .iPhone7: "iPhone 7", .iPhone7Plus: "iPhine 7 Plus", .iPhone8: "iPhone 8", .iPhone8Plus: "iPhone 8 Plus", .iPhoneX: "iPhone X", .iPhoneXS: "iPhone XS", .iPhoneXSMax: "iPhone Xs Max", .iPhoneXR: "iPhone XR", .iPhoneSE: "iPhone SE"]

let diagonalDicrionary: [Devices: Double] = [.iPad5gen: 9.7, .iPad6gen: 9.7, .ipadAir3gen: 10.5, .ipadMini: 7.9, .ipadMini2: 7.9, .ipadMini3: 7.9, .ipadMini4: 7.9, .ipadMini5: 7.9, .ipadPro: 9.7, .ipadPro10: 10.5, .ipadPro11: 11.0, .ipad12_1gen: 12.9, .ipad12_2gen: 12.9, .ipad12_3gen: 12.9, .iPhone4s: 3.5, .iPhone5: 4, .iPhone5s:4, .iPhone5c: 4, .iPhone6: 4.7, .iPhone6Plus: 5.5, .iPhone6s: 4.7, .iPhone6sPlus: 5.5, .iPhone7: 4.7, .iPhone7Plus: 5.5, .iPhone8: 4.7, .iPhone8Plus: 5.5, .iPhoneX: 5.8, .iPhoneXS: 5.8, .iPhoneXSMax: 6.5, .iPhoneXR: 6.1, .iPhoneSE: 4.7]

let disctionatyPPI: [Devices: Int] = [.iPad5gen: 246, .iPad6gen: 264, .ipadAir3gen: 264, .ipadMini: 163, .ipadMini2: 326, .ipadMini3: 326, .ipadMini4: 326, .ipadMini5: 326, .ipadPro: 264, .ipadPro10: 264, .ipadPro11: 264, .ipad12_1gen: 264, .ipad12_2gen: 264, .ipad12_3gen: 264, .iPhone4s: 326, .iPhone5: 326, .iPhone5s: 326, .iPhone5c: 326, .iPhone6: 326, .iPhone6Plus: 401, .iPhone6s: 326, .iPhone6sPlus: 401, .iPhone7: 326, .iPhone7Plus: 401, .iPhone8: 326, .iPhone8Plus: 401, .iPhoneX: 458, .iPhoneXS: 458, .iPhoneXSMax: 458, .iPhoneXR: 326, .iPhoneSE: 326]

