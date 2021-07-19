//
//  NetworkManager.swift
//  Practice_Networking
//
//  Created by Матвей Кашин on 15.07.2021.
//  Copyright © 2021 NIX Solitions. All rights reserved.
//

import Foundation


class NetworkManager {
    
    private static var uniqueInstance: NetworkManager?
    
    private init() { }
    
    static func shared() -> NetworkManager {
        if uniqueInstance == nil {
            uniqueInstance = NetworkManager()
        }
        return uniqueInstance!
    }
}
