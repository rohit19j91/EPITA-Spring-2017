//
//  Weather.swift
//  Advanced iOS Spring 2017
//
//  Created by Rohit Chauhan on 17/05/2017.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import Foundation
import UIKit

class Weather
{
    
    var city : String = ""
    var temperature : Int = 0
    var picture : UIImage? //stored properties 2 ways war= can change/let=final throughout the class
    // ? it means can be there or not/nullable value/optional value
    
    init?(city:String,temperature:Int,picture:UIImage?) {
        self.city=city
        self.temperature=temperature
        self.picture=picture
        
        if(city.isEmpty){
            return nil
        }
    }
    
}
