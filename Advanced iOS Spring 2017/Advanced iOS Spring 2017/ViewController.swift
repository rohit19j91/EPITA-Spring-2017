//
//  ViewController.swift
//  Advanced iOS Spring 2017
//
//  Created by Suiz Uzcategui on 19/04/2017.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let weather_ch = Weather(city: "Paris",temperature: 32, picture: nil)
        //weather.init("Paris",32,nill)
        
        print(weather_ch!.city)
        print(weather_ch!.temperature)
        temperature.text=String(weather_ch!.temperature)
        City.text=weather_ch?.city
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Added the UI Labels code here
    @IBOutlet weak var temperature: UILabel!
    @IBOutlet weak var City: UILabel!
    
    }

