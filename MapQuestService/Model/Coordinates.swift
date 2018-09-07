//
//  Coordinates.swift
//  MapCodingTest
//
//  Created by Mac on 9/1/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import Foundation

public struct Coordinates: Codable {
    public let latitude: Double
    public let longitude: Double
    
    enum CodingKeys: String, CodingKey {
        case latitude = "lat"
        case longitude = "lng"
    }
}
