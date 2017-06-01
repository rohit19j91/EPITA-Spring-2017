//
//  WeatherAdd.swift
//  Advanced iOS Spring 2017
//
//  Created by Rohit Chauhan on 01/06/2017.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import os.log
import UIKit

class WeatherAdd: UIViewController {


    var weather:Weather?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Cancel(_ sender: Any) {
        dismiss(animated:true, completion: nil)
    }
    
    @IBAction func Save(_ sender: Any) {
      
    }
    

    @IBOutlet weak var CityText: UITextField!
    @IBOutlet weak var temperature: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let button = sender as?UIBarButtonItem,button==saveButton else{
            os_log("Save Button not pressed", log: OSLog.default, type: .debug)
            return
        }
            //User cancelled the action
            let city = CityText.text
            let temperature = Int(self.temperature.text!)
            weather = Weather(city: city!,temperature:temperature!, picture: nil)
    
   
    }
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
