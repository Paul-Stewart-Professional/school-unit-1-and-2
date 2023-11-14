//
//  ToDoTableViewController.swift
//  toDoList
//
//  Created by Paul Stewart on 11/14/23.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var todos = [ToDo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let savedToDos = ToDo.loadToDos() {
            todos = savedToDos
        } else {
            todos = ToDo.loadSampleToDos()
        }
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = editButtonItem
    }
    
    @IBAction func undwindToToDoList(segue: UIStoryboardSegue) {
        guard segue.identifier == "saveUnwind" else { return }
        let sourceViewControler = segue.source as! NewToDoTableViewController
        if let todo = sourceViewControler.todo {
            let newIndexPath = IndexPath(row: todos.count, section: 0)
            
            todos.append(todo)
            tableView.insertRows(at: [newIndexPath], with: .automatic)
        }
    }
    
    
    @IBSegueAction func editToDo(_ coder: NSCoder, sender: Any?) -> NewToDoTableViewController? {
        guard let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) else { return nil }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let detailController = NewToDoTableViewController(coder: coder)
        
        detailController?.todo = todos[indexPath.row]
        
        return detailController
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return todos.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCellIdentifier", for: indexPath)
        
        // Configure the cell...
        let todo = todos[indexPath.row]
        cell.textLabel?.text = todo.title
        
        return cell
    }
    
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            todos.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
