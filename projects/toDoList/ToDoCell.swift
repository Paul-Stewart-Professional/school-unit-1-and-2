//
//  ToDoCell.swift
//  toDoList
//
//  Created by Paul Stewart on 11/15/23.
//

import UIKit


class ToDoCell: UITableViewCell {
    
    
    
    @IBOutlet weak var isDoneButton: UIButton!
    @IBOutlet weak var toDoLabel: UILabel!
    
    var onComplete: (() -> Void )?

    @IBAction func completeButtonTapped(_ sender: Any) {
        onComplete?()
    }
    
    
}
