//
//  Location.swift
//  MapCodingTest
//
//  Created by Mac on 9/1/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import Foundation

public struct Location: Codable {
    public let city: String
    public let state: String
    public let country: String
    public let coordinates: Coordinates
    
    enum CodingKeys: String, CodingKey {
        case city = "adminArea5"
        case state = "adminArea3"
        case country = "adminArea1"
        case coordinates = "latLng"
    }
}
