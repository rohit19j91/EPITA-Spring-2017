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
    func readJSONObject(object: [String: AnyObject]) {
         let city = object["name"] as? String
            let hum = object["humidity"] as? Int
    print("City:\n\(String(describing: city))")
        print("Humid:\n\(String(describing: hum))")
    }
    
        func parseJson(cities: Data)
        {
            do
            {
                        
                let object = try JSONSerialization.jsonObject(with: cities, options: .allowFragments)
                if let dictionary = object as? [String: AnyObject] {
                        readJSONObject(object: dictionary)
                    }
                let data = cities
                let json = try JSONSerialization.jsonObject(with: data) as? [String: AnyObject]
                let cityNames = json?["name"] as? [String: AnyObject]
              //  let cityName = cityNames
                print("Checking if City is :\n\(String(describing: cityNames))")
            }
catch {
    print("Error parsing JSON:\(error)")
}
}
}

