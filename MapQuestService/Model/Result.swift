//
//  Result.swift
//  MapCodingTest
//
//  Created by Mac on 9/1/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import Foundation

struct Result: Codable {
    let locations: [Location]
    
    enum CodingKeys: String, CodingKey {
        case locations
    }
}
