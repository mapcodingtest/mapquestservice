//
//  NetworkService.swift
//  MapQuestService
//
//  Created by Ryan Khondker on 9/1/18.
//  Copyright © 2018 Ryan Khondker. All rights reserved.
//

import Foundation

public class NetworkService {
    static let baseUrl = "https://www.mapquestapi.com/geocoding/v1/address?key=6UhCWA07EmwxAaPocXGrWF2hUyDJIR1l&location="
    
    public class func getLocations(queryLocation: String, completion: @escaping ([Location]?, Error?) -> ()) {
        let urlAsString = "\(baseUrl)\(queryLocation)"
        guard let url = URL(string: urlAsString) else {
            completion(nil, NetworkErrors.badUrl)
            return
        }
        let session = URLSession.shared
        let task = session.dataTask(with: url) {
            (data, response, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            
            guard let response = response as? HTTPURLResponse else {
                completion(nil, NetworkErrors.badResponse)
                return
            }
            
            guard response.statusCode == 200 else {
                completion(nil, NetworkErrors.httpError(code: response.statusCode))
                return
            }
            
            guard let data = data else {
                completion(nil, NetworkErrors.noData)
                return
            }
            
            do {
                let resultArray = try JSONDecoder().decode(ResultArray.self, from: data)
                guard let firstResult = resultArray.results.first else {
                    completion(nil, NetworkErrors.noData)
                    return
                }
                completion(firstResult.locations, nil)
                return
            }
            catch let error {
                completion(nil, error)
                return
            }
        }
        task.resume()
    }
}
