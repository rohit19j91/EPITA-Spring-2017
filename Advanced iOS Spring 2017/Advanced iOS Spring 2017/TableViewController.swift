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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        weatherArray.append(Weather(city:"Amsterdam",temperature:24, picture: UIImage(named: "image1"))!)
        weatherArray.append(Weather(city:"Nice",temperature:30, picture: UIImage(named: "image3"))!)
        weatherArray.append(Weather(city:"Copenhagen",temperature:21, picture: UIImage(named: "image2"))!)
        weatherArray.append(Weather(city:"Berlin",temperature:20, picture: UIImage(named: "Image-1.jpeg"))!)
        weatherArray.append(Weather(city:"Nice",temperature:18, picture: UIImage(named: "image1"))!)
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

}

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


