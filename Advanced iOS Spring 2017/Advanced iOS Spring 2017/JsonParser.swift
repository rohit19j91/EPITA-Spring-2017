//
//  JsonParser.swift
//  Advanced iOS Spring 2017
//
//  Created by Rohit Chauhan on 10/05/2017.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import Foundation

class JsonParser
    {
    
        func parseJson(cities: Data)
        {
            do
            {
                let data = cities
                let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
                let cityNames = json?["name"] as? [[String: Any]]
                let cityName = cityNames
                print("chekcing dgdgdg  City:\n\(cityName!)")
            }
catch {
    print("Error parsing JSON:\(error)")
}
}
}
