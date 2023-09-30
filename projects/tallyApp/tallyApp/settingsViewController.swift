//
//  settingsViewController.swift
//  tallyApp
//
//  Created by Paul Stewart on 9/30/23.
//

import UIKit

class settingsViewController: UIViewController {
    
    //vars
    
    
    //outlets
    
    @IBOutlet weak var setCountByButton: UIButton!
    
    @IBOutlet weak var countByLabel: UILabel!
    
    @IBOutlet weak var posNegSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countByLabel.text = "Count by: 1"
        
    }
    
    @IBAction func stepUpCounterButtonHalfPressed(_ sender: Any) {
        setCountByButton.tintColor = .init(red: 0.68235294118, green: 0.68235294118, blue: 0.69019607843, alpha: 1.0)

    }
    
    @IBAction func stepUpCounterButtonPressed(_ sender: Any) {
        if posNegSwitch.isOn {
            SharedData.shared.countBy += 1
        } else {
            SharedData.shared.countBy -= 1
        }
        countByLabel.text = "Count by: \(SharedData.shared.countBy)"
        print(SharedData.shared.countBy)
    }
    
}
