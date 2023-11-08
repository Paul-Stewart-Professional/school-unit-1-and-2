//
//  PlayerScoresTableViewCell.swift
//  scoreKeeper
//
//  Created by Paul Stewart on 11/8/23.
//

import UIKit

class PlayerScoresTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var scoreStepper: UIStepper!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with player: Player) {
        nameLabel.text = player.name
        scoreLabel.text = String(Int(scoreStepper.value))
    }
    
    
    @IBAction func scoreStepperTapped(_ sender: Any) {
        
    }
    
}
