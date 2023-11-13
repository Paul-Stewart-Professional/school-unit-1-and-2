//
//  PlayersTableViewController.swift
//  scoreKeeper
//
//  Created by Paul Stewart on 11/8/23.
//

import UIKit

class PlayersTableViewController: UITableViewController {
    var sortedPlayers: [Player?] {
        arrayOfPlayers.sorted(by: >)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        tableView.rowHeight = 70
    }
    
    @IBAction func unwindToPlayersScores(segue: UIStoryboardSegue) {
        guard segue.identifier == "saveUnwind",
              let sourceViewController = segue.source as? AddPlayerTableViewController,
              let player = sourceViewController.player else { return }
        //        if let selectedIndexPath = tableView.indexPathForSelectedRow {
        //            arrayOfPlayers[selectedIndexPath.row] = player
        //            tableView.reloadRows(at: [selectedIndexPath], with: .none)
        //        } else {
        let newIndexPath = IndexPath(row: arrayOfPlayers.count, section: 0)
        arrayOfPlayers.append(player)
        tableView.insertRows(at: [newIndexPath], with: .automatic)
        arrayOfPlayers.sort(by: >)
    }
    
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayOfPlayers.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playerScoresCell", for: indexPath) as! PlayerScoresTableViewCell
        
        let playerForThisParticularRow = arrayOfPlayers[indexPath.row]
        cell.update(with: playerForThisParticularRow, delegate: self)
        return cell
    }
}

extension PlayersTableViewController: PlayerScoresTableViewCellDelegate {
    func updatePlayerScore(_ player: Player, newScore: Int) {
        if let index = arrayOfPlayers.firstIndex(where: { $0 == player }) {
            arrayOfPlayers[index].score = newScore
            tableView.reloadRows(at: [IndexPath(row: index, section: 0)], with: .none)
        }
    }
}

protocol PlayerScoresTableViewCellDelegate: AnyObject {
    func updatePlayerScore(_ player: Player, newScore: Int)
}
