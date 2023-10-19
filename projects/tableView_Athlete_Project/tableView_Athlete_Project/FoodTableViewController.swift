//
//  FoodTableViewController.swift
//  tableView_Athlete_Project
//
//  Created by Paul Stewart on 10/15/23.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    let meals: [Meal] = [
        Meal(name: "Breakfast", food: [
            Food(name: "Banana", description: "Banana-y, slightly over ripened"),
            Food(name: "Pancake", description: "Chocolate chips and cinnamon inside"),
            Food(name: "Rocks", description: "Tasted dusty")
        ]
            ),
        Meal(name: "Lunch", food: [
            Food(name: "Chip", description: "Just one, dorito"),
            Food(name: "Blueberry", description: "Just a single blueberry"),
            Food(name: "Dirt", description: "Very high in minerals")
        ]
            ),
        Meal(name: "Dinner", food: [
            Food(name: "Small Child", description: "~5,000 cal :)"),
            Food(name: "Beans", description: "Refried, with cheese and meat"),
            Food(name: "Your mother", description: "Delectable")
        ]
            )
    ]
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }
    
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            return meals[section].food.count
        }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        
        let meal = meals[indexPath.section]
        let food = meals[indexPath.row]
        // Configure the cell...
        
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = "\(food.food)"
        return cell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
