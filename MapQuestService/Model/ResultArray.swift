//
//  ResultArray.swift
//  MapCodingTest
//
//  Created by Mac on 9/1/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import Foundation

struct ResultArray: Codable {
    let results: [Result]
    
    enum CodingKeys: String, CodingKey {
        case results
    }
}
