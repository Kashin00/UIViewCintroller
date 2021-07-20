//
//  Model.swift
//  Practice_Networking
//
//  Created by Матвей Кашин on 15.07.2021.
//  Copyright © 2021 NIX Solitions. All rights reserved.
//

import Foundation

public struct DecodeModel: Codable {
    var body: String
    var id: Int
    var title: String
    var userId: Int
}


public enum RequestType: String {
    case get, post, head, put, delete
}
