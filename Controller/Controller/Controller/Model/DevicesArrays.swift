import Foundation

var allDevices: [DeviceModel] = [
    DeviceModel(devise: .iPhone4s, destription: destriptionDictionary[.iPhone4s]!, diagonal: diagonalDicrionary[.iPhone4s]!, ppi: disctionatyPPI[.iPhone4s]!, imageName: "iphone4s"),
    DeviceModel(devise: .iPhone5, destription: destriptionDictionary[.iPhone5]!, diagonal: diagonalDicrionary[.iPhone5]!, ppi: disctionatyPPI[.iPhone5]!, imageName: "iphone5"),
    DeviceModel(devise: .iPhone5s, destription: destriptionDictionary[.iPhone5s]!, diagonal: diagonalDicrionary[.iPhone5s]!, ppi: disctionatyPPI[.iPhone5s]!, imageName: "iphone5s"),
    DeviceModel(devise: .iPhone5c, destription: destriptionDictionary[.iPhone5c]!, diagonal: diagonalDicrionary[.iPhone5c]!, ppi: disctionatyPPI[.iPhone5c]!, imageName: "iphone5c"),
    DeviceModel(devise: .iPhone6, destription: destriptionDictionary[.iPhone6]!, diagonal: diagonalDicrionary[.iPhone6]!, ppi: disctionatyPPI[.iPhone6]!, imageName: "iphone6"),
    DeviceModel(devise: .iPhone6Plus, destription: destriptionDictionary[.iPhone6Plus]!, diagonal: diagonalDicrionary[.iPhone6Plus]!, ppi: disctionatyPPI[.iPhone6Plus]!, imageName: "iphone6plus"),
    DeviceModel(devise: .iPhone6s, destription: destriptionDictionary[.iPhone6s]!, diagonal: diagonalDicrionary[.iPhone6s]!, ppi: disctionatyPPI[.iPhone6s]!, imageName: "iphone6s"),
    DeviceModel(devise: .iPhone6sPlus, destription: destriptionDictionary[.iPhone6sPlus]!, diagonal: diagonalDicrionary[.iPhone6sPlus]!, ppi: disctionatyPPI[.iPhone6sPlus]!, imageName: "iphone6splus"),
    DeviceModel(devise: .iPhone7, destription: destriptionDictionary[.iPhone7]!, diagonal: diagonalDicrionary[.iPhone7]!, ppi: disctionatyPPI[.iPhone7]!, imageName: "iphone7"),
    DeviceModel(devise: .iPhone7Plus, destription: destriptionDictionary[.iPhone7Plus]!, diagonal: diagonalDicrionary[.iPhone7Plus]!, ppi: disctionatyPPI[.iPhone7Plus]!, imageName: "iphone7plus"),
    DeviceModel(devise: .iPhone8, destription: destriptionDictionary[.iPhone8]!, diagonal: diagonalDicrionary[.iPhone8]!, ppi: disctionatyPPI[.iPhone8]!, imageName: "iphone8"),
    DeviceModel(devise: .iPhone8Plus, destription: destriptionDictionary[.iPhone8Plus]!, diagonal: diagonalDicrionary[.iPhone8Plus]!, ppi: disctionatyPPI[.iPhone8Plus]!, imageName: "iphone8plus"),
    DeviceModel(devise: .iPhoneX, destription: destriptionDictionary[.iPhoneX]!, diagonal: diagonalDicrionary[.iPhoneX]!, ppi: disctionatyPPI[.iPhoneX]!, imageName: "iphoneX"),
    DeviceModel(devise: .iPhoneXSMax, destription: destriptionDictionary[.iPhoneXSMax]!, diagonal: diagonalDicrionary[.iPhoneXSMax]!, ppi: disctionatyPPI[.iPhoneXSMax]!, imageName: "iphoneXsmax"),
    DeviceModel(devise: .iPhoneXS, destription: destriptionDictionary[.iPhoneXS]!, diagonal: diagonalDicrionary[.iPhoneXS]!, ppi: disctionatyPPI[.iPhoneXS]!, imageName: "iphoneXs"),
    DeviceModel(devise: .iPhoneXR, destription: destriptionDictionary[.iPhoneXR]!, diagonal: diagonalDicrionary[.iPhoneXR]!, ppi: disctionatyPPI[.iPhoneXR]!, imageName: "iphoneXr"),
    DeviceModel(devise: .iPad5gen, destription: destriptionDictionary[.iPad5gen]!, diagonal: diagonalDicrionary[.iPad5gen]!, ppi: disctionatyPPI[.iPad5gen]!, imageName: "ipad5gen"),
    DeviceModel(devise: .iPad6gen, destription: destriptionDictionary[.iPad6gen]!, diagonal: diagonalDicrionary[.iPad6gen]!, ppi: disctionatyPPI[.iPad6gen]!, imageName: "ipad6gen"),
    DeviceModel(devise: .iPadAir3gen, destription: destriptionDictionary[.iPadAir3gen]!, diagonal: diagonalDicrionary[.iPadAir3gen]!, ppi: disctionatyPPI[.iPadAir3gen]!, imageName: "ipadAir3gen"),
    DeviceModel(devise: .iPadMini, destription: destriptionDictionary[.iPadMini]!, diagonal: diagonalDicrionary[.iPadMini]!, ppi: disctionatyPPI[.iPadMini]!, imageName: "ipadMini"),
    DeviceModel(devise: .iPadMini2, destription: destriptionDictionary[.iPadMini2]!, diagonal: diagonalDicrionary[.iPadMini2]!, ppi: disctionatyPPI[.iPadMini2]!, imageName: "ipadMini2"),
    DeviceModel(devise: .iPadMini3, destription: destriptionDictionary[.iPadMini3]!, diagonal: diagonalDicrionary[.iPadMini3]!, ppi: disctionatyPPI[.iPadMini3]!, imageName: "ipadMini3"),
    DeviceModel(devise: .iPadMini4, destription: destriptionDictionary[.iPadMini4]!, diagonal: diagonalDicrionary[.iPadMini4]!, ppi: disctionatyPPI[.iPadMini4]!, imageName: "ipadMini4"),
    DeviceModel(devise: .iPadMini5, destription: destriptionDictionary[.iPadMini5]!, diagonal: diagonalDicrionary[.iPadMini5]!, ppi: disctionatyPPI[.iPadMini5]!, imageName: "ipadMini5"),
    DeviceModel(devise: .iPadPro, destription: destriptionDictionary[.iPadPro]!, diagonal: diagonalDicrionary[.iPadPro]!, ppi: disctionatyPPI[.iPadPro]!, imageName: "ipadPro"),
    DeviceModel(devise: .iPadPro10, destription: destriptionDictionary[.iPadPro10]!, diagonal: diagonalDicrionary[.iPadPro10]!, ppi: disctionatyPPI[.iPadPro10]!, imageName: "ipadPro10"),
    DeviceModel(devise: .iPadPro11, destription: destriptionDictionary[.iPadPro11]!, diagonal: diagonalDicrionary[.iPadPro11]!, ppi: disctionatyPPI[.iPadPro11]!, imageName: "ipadPro11"),
    
    DeviceModel(devise: .iPad12_1gen, destription: destriptionDictionary[.iPad12_1gen]!, diagonal: diagonalDicrionary[.iPad12_1gen]!, ppi: disctionatyPPI[.iPad12_1gen]!, imageName: "ipadPro12.1gen"),
    DeviceModel(devise: .iPad12_2gen, destription: destriptionDictionary[.iPad12_2gen]!, diagonal: diagonalDicrionary[.iPad12_2gen]!, ppi: disctionatyPPI[.iPad12_2gen]!, imageName: "ipadPro12.2gen"),
    DeviceModel(devise: .iPad12_3gen, destription: destriptionDictionary[.iPad12_3gen]!, diagonal: diagonalDicrionary[.iPad12_3gen]!, ppi: disctionatyPPI[.iPad12_3gen]!, imageName: "ipadPro12.3gen")
]

var iPhoneArray: [DeviceModel] = [
    DeviceModel(devise: .iPhone4s, destription: destriptionDictionary[.iPhone4s]!, diagonal: diagonalDicrionary[.iPhone4s]!, ppi: disctionatyPPI[.iPhone4s]!, imageName: "iphone4s"),
    DeviceModel(devise: .iPhone5, destription: destriptionDictionary[.iPhone5]!, diagonal: diagonalDicrionary[.iPhone5]!, ppi: disctionatyPPI[.iPhone5]!, imageName: "iphone5"),
    DeviceModel(devise: .iPhone5s, destription: destriptionDictionary[.iPhone5s]!, diagonal: diagonalDicrionary[.iPhone5s]!, ppi: disctionatyPPI[.iPhone5s]!, imageName: "iphone5s"),
    DeviceModel(devise: .iPhone5c, destription: destriptionDictionary[.iPhone5c]!, diagonal: diagonalDicrionary[.iPhone5c]!, ppi: disctionatyPPI[.iPhone5c]!, imageName: "iphone5c"),
    DeviceModel(devise: .iPhone6, destription: destriptionDictionary[.iPhone6]!, diagonal: diagonalDicrionary[.iPhone6]!, ppi: disctionatyPPI[.iPhone6]!, imageName: "iphone6"),
    DeviceModel(devise: .iPhone6Plus, destription: destriptionDictionary[.iPhone6Plus]!, diagonal: diagonalDicrionary[.iPhone6Plus]!, ppi: disctionatyPPI[.iPhone6Plus]!, imageName: "iphone6plus"),
    DeviceModel(devise: .iPhone6s, destription: destriptionDictionary[.iPhone6s]!, diagonal: diagonalDicrionary[.iPhone6s]!, ppi: disctionatyPPI[.iPhone6s]!, imageName: "iphone6s"),
    DeviceModel(devise: .iPhone6sPlus, destription: destriptionDictionary[.iPhone6sPlus]!, diagonal: diagonalDicrionary[.iPhone6sPlus]!, ppi: disctionatyPPI[.iPhone6sPlus]!, imageName: "iphone6splus"),
    DeviceModel(devise: .iPhone7, destription: destriptionDictionary[.iPhone7]!, diagonal: diagonalDicrionary[.iPhone7]!, ppi: disctionatyPPI[.iPhone7]!, imageName: "iphone7"),
    DeviceModel(devise: .iPhone7Plus, destription: destriptionDictionary[.iPhone7Plus]!, diagonal: diagonalDicrionary[.iPhone7Plus]!, ppi: disctionatyPPI[.iPhone7Plus]!, imageName: "iphone7plus"),
    DeviceModel(devise: .iPhone8, destription: destriptionDictionary[.iPhone8]!, diagonal: diagonalDicrionary[.iPhone8]!, ppi: disctionatyPPI[.iPhone8]!, imageName: "iphone8"),
    DeviceModel(devise: .iPhone8Plus, destription: destriptionDictionary[.iPhone8Plus]!, diagonal: diagonalDicrionary[.iPhone8Plus]!, ppi: disctionatyPPI[.iPhone8Plus]!, imageName: "iphone8plus"),
    DeviceModel(devise: .iPhoneX, destription: destriptionDictionary[.iPhoneX]!, diagonal: diagonalDicrionary[.iPhoneX]!, ppi: disctionatyPPI[.iPhoneX]!, imageName: "iphoneX"),
    DeviceModel(devise: .iPhoneXSMax, destription: destriptionDictionary[.iPhoneXSMax]!, diagonal: diagonalDicrionary[.iPhoneXSMax]!, ppi: disctionatyPPI[.iPhoneXSMax]!, imageName: "iphoneXsmax"),
    DeviceModel(devise: .iPhoneXS, destription: destriptionDictionary[.iPhoneXS]!, diagonal: diagonalDicrionary[.iPhoneXS]!, ppi: disctionatyPPI[.iPhoneXS]!, imageName: "iphoneXs"),
    DeviceModel(devise: .iPhoneXR, destription: destriptionDictionary[.iPhoneXR]!, diagonal: diagonalDicrionary[.iPhoneXR]!, ppi: disctionatyPPI[.iPhoneXR]!, imageName: "iphoneXr")
]

var iPadArray: [DeviceModel] = [
    
    DeviceModel(devise: .iPad5gen, destription: destriptionDictionary[.iPad5gen]!, diagonal: diagonalDicrionary[.iPad5gen]!, ppi: disctionatyPPI[.iPad5gen]!, imageName: "ipad5gen"),
    DeviceModel(devise: .iPad6gen, destription: destriptionDictionary[.iPad6gen]!, diagonal: diagonalDicrionary[.iPad6gen]!, ppi: disctionatyPPI[.iPad6gen]!, imageName: "ipad6gen"),
    DeviceModel(devise: .iPadAir3gen, destription: destriptionDictionary[.iPadAir3gen]!, diagonal: diagonalDicrionary[.iPadAir3gen]!, ppi: disctionatyPPI[.iPadAir3gen]!, imageName: "ipadAir3gen"),
    DeviceModel(devise: .iPadMini, destription: destriptionDictionary[.iPadMini]!, diagonal: diagonalDicrionary[.iPadMini]!, ppi: disctionatyPPI[.iPadMini]!, imageName: "ipadMini"),
    DeviceModel(devise: .iPadMini2, destription: destriptionDictionary[.iPadMini2]!, diagonal: diagonalDicrionary[.iPadMini2]!, ppi: disctionatyPPI[.iPadMini2]!, imageName: "ipadMini2"),
    DeviceModel(devise: .iPadMini3, destription: destriptionDictionary[.iPadMini3]!, diagonal: diagonalDicrionary[.iPadMini3]!, ppi: disctionatyPPI[.iPadMini3]!, imageName: "ipadMini3"),
    DeviceModel(devise: .iPadMini4, destription: destriptionDictionary[.iPadMini4]!, diagonal: diagonalDicrionary[.iPadMini4]!, ppi: disctionatyPPI[.iPadMini4]!, imageName: "ipadMini4"),
    DeviceModel(devise: .iPadMini5, destription: destriptionDictionary[.iPadMini5]!, diagonal: diagonalDicrionary[.iPadMini5]!, ppi: disctionatyPPI[.iPadMini5]!, imageName: "ipadMini5"),
    DeviceModel(devise: .iPadPro, destription: destriptionDictionary[.iPadPro]!, diagonal: diagonalDicrionary[.iPadPro]!, ppi: disctionatyPPI[.iPadPro]!, imageName: "ipadPro"),
    DeviceModel(devise: .iPadPro10, destription: destriptionDictionary[.iPadPro10]!, diagonal: diagonalDicrionary[.iPadPro10]!, ppi: disctionatyPPI[.iPadPro10]!, imageName: "ipadPro10"),
    DeviceModel(devise: .iPadPro11, destription: destriptionDictionary[.iPadPro11]!, diagonal: diagonalDicrionary[.iPadPro11]!, ppi: disctionatyPPI[.iPadPro11]!, imageName: "ipadPro11"),
    
    DeviceModel(devise: .iPad12_1gen, destription: destriptionDictionary[.iPad12_1gen]!, diagonal: diagonalDicrionary[.iPad12_1gen]!, ppi: disctionatyPPI[.iPad12_1gen]!, imageName: "ipadPro12.1gen"),
    DeviceModel(devise: .iPad12_2gen, destription: destriptionDictionary[.iPad12_2gen]!, diagonal: diagonalDicrionary[.iPad12_2gen]!, ppi: disctionatyPPI[.iPad12_2gen]!, imageName: "ipadPro12.2gen"),
    DeviceModel(devise: .iPad12_3gen, destription: destriptionDictionary[.iPad12_3gen]!, diagonal: diagonalDicrionary[.iPad12_3gen]!, ppi: disctionatyPPI[.iPad12_3gen]!, imageName: "ipadPro12.3gen")
]
