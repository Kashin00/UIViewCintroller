//
//  Device.swift
//  Controller
//
//  Created by Матвей Кашин on 12.07.2021.
//

import Foundation

enum Iphone: CaseIterable {
    case iphone4S, iphone5S, iphone5C, iphone5, iphone6, iphone6Plus, iphone6S, iphone6SPlus, iphone7, iphone7Plus, iphone8, iphone8Plus, iphoneSE, iphoneX, iphoneXr, iphoneXs, iphoneXsMax
}

enum Ipad: CaseIterable {
    case ipad5Gen, ipad6Gen, ipadAir3, ipadMini, ipadMini2, ipadMini3, ipadMini4, ipadMini5, ipadPro, ipadPro10, ipadPro11, ipadPro12FirstGen, ipadPro12SecondGen, ipadPro12thirdGen
}

struct DeviceIphone {
    let device: Iphone
    let destription: String
    let diagonal: String
    let ppi: String
}

struct DeviceIpad {
    let device: Ipad
    let destription: String
    let diagonal: String
    let ppi: String
}

