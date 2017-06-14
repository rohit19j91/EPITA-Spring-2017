//
//  WeatherTableViewCell.swift
//  Advanced iOS Spring 2017
//
//  Created by Rohit Chauhan on 24/05/2017.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var CityName: UILabel!
    @IBOutlet weak var Temperature: UILabel!
    @IBOutlet weak var ImageCell: UIImageView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
            
        }
    
    

}
