//
//  FoodTableViewController.swift
//  mealTracker
//
//  Created by Paul Stewart on 11/3/23.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
            get {
                let breakfast = Meal(name: "Breakfast", food: [
                    Food(name: "Cereal", description: "Yum"),
                    Food(name: "Milk", description: "yum"),
                    Food(name: "Banana", description: "yummy")
                ])
                
                let lunch = Meal(name: "Lunch", food: [
                    Food(name: "Sandwich", description: "Yummy"),
                    Food(name: "Salad", description: "Yum!"),
                    Food(name: "Fruit", description: "Yummy Yummy")
                ])
                
                let dinner = Meal(name: "Dinner", food: [
                    Food(name: "Chicken", description: "Yummy!"),
                    Food(name: "Rice", description: "Yumm"),
                    Food(name: "Vegetables", description: "yummy!")
                ])
                
                return [breakfast, lunch, dinner]
            }
        }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

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

        var meal = meals[indexPath.section]
        var food = meal.food[indexPath.row]
        cell.textLabel?.text = "\(food.name)"
        cell.detailTextLabel?.text = "\(food.description)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }

}
