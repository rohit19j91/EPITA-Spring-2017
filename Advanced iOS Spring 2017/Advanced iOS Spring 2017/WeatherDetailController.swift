//
//  WeatherDetailController.swift
//  Advanced iOS Spring 2017
//
//  Created by Rohit Chauhan on 01/06/2017.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import UIKit

class WeatherDetailController: UIViewController {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var citypicture: UIImageView!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var temperature: UILabel!
    
    var cityname = ""
    var temp = 0
    var img = UIImage()
    
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        city.text = cityname
        temperature.text = String(temp)
        citypicture.image = img
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
 */
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//         Get the new view controller using segue.destinationViewController.
//         Pass the selected object to the new view controller.
//    }
 

}
