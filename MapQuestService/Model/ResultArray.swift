//
//  ResultArray.swift
//  MapCodingTest
//
//  Created by Ryan Khondker on 9/1/18.
//  Copyright © 2018 Ryan Khondker. All rights reserved.
//

import Foundation

struct ResultArray: Codable {
    let results: [Result]
    
    enum CodingKeys: String, CodingKey {
        case results
    }
}
