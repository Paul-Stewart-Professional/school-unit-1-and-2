//
//  ToDoCell.swift
//  toDoList
//
//  Created by Paul Stewart on 11/15/23.
//

import UIKit

protocol ToDoCellDelegate: AnyObject {
    func checkMarkTapped(sender: ToDoCell)
}
class ToDoCell: UITableViewCell {
    
    weak var delegate: ToDoCellDelegate?
    
    @IBOutlet weak var isDoneButton: UIButton!
    @IBOutlet weak var toDoLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func completeButtonTapped(_ sender: Any) {
        delegate?.checkMarkTapped(sender: self)
    }
    
    
}
