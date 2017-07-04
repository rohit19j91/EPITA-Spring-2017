//
//  TableViewController.swift
//  Advanced iOS Spring 2017
//
//  Created by Rohit Chauhan on 17/05/2017.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var weatherArray=[Weather]()
    var indexin = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = UIColor(patternImage: UIImage(named: "backgroundpages")!)

        
        weatherArray.append(Weather(city:"Paris",temperature:24, picture: UIImage(named: "image1"))!)
        weatherArray.append(Weather(city:"Nice",temperature:30, picture: UIImage(named: "image3"))!)
        weatherArray.append(Weather(city:"Copenhagen",temperature:21, picture: UIImage(named: "image2"))!)
        weatherArray.append(Weather(city:"Berlin",temperature:20, picture: UIImage(named: "image4.jpeg"))!)
        weatherArray.append(Weather(city:"Amsterdam",temperature:18, picture: UIImage(named: "image5"))!)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        //Debugging routines
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return weatherArray.count
        //@RC: Returning the count of the arrays
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherTableViewCell", for: indexPath) as?WeatherTableViewCell else {fatalError("error")}
        cell.backgroundView = UIImageView(image: UIImage(named: "backgroundrows")!)
        cell.CityName?.text=weatherArray[indexPath.row].city
        cell.Temperature?.text=String(weatherArray[indexPath.row].temperature)
        cell.ImageCell.image = weatherArray[indexPath.row].picture
        return cell
        }
    @IBAction func unwind(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as? WeatherAdd, let weather=sourceViewController.weather
        {
            
            let newIndexPath=IndexPath(row: weatherArray.count, section: 0)
            weatherArray.append(weather)
            tableView.insertRows(at: [newIndexPath],with: .automatic)
        }
    }

    //This function helps in selecting the row on the table view
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //The below method instantiates the WeatherDetailCOntroller view
        let dispvw = storyboard?.instantiateViewController(withIdentifier: "WeatherDetailController") as! WeatherDetailController
        //Putting in values of the selected row into the variables on the WeatherDetailController
        dispvw.cityname = weatherArray[indexPath.row].city
        dispvw.temp = weatherArray[indexPath.row].temperature
        dispvw.img = weatherArray[indexPath.row].picture!
        //Pushing all the values and WeatherDetailController as well to display on the screen
        self.navigationController?.pushViewController(dispvw, animated: true)
    }

    // Helps in deleting the items via UI
    // User can Swipe any row on the right and delete it
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            weatherArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}


    /* Another way of performing the above operations of assigning the values and calling the WeatherDetailController view after that
        performSegue(withIdentifier: "transferdetails", sender: weatherArray[indexin])
        override func prepare(for segue: UIStoryboardSegue, sender: (Any)?) {
        let guestuser = segue.destination as! WeatherDetailController
        guestuser.cityname = weatherArray[indexin].city
        guestuser.temp = weatherArray[indexin].temperature
        guestuser.img = weatherArray[indexin].picture!
 
    }
    */
