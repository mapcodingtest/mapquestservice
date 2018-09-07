//
//  NetworkErrors.swift
//  MapQuestService
//
//  Created by Mac on 9/1/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import Foundation

enum NetworkErrors: Error {
    case invalidQuery
    case badUrl
    case badResponse
    case httpError(code: Int)
    case noData
    case badData
}
