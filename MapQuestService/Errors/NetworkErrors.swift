//
//  NetworkErrors.swift
//  MapQuestService
//
//  Created by Ryan Khondker on 9/1/18.
//  Copyright © 2018 Ryan Khondker. All rights reserved.
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
