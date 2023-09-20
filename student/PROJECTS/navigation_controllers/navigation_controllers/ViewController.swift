//
//  ViewController.swift
//  navigation_controllers
//
//  Created by Paul Stewart on 9/14/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var capTitle: UILabel!
    
    @IBOutlet weak var capSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func toTheFaxWorld(_ sender: Any) {
        if capSwitch .isOn {
            performSegue(withIdentifier: "redPill", sender: nil)
        }
    }
    
    @IBAction func kindaMidTBH(_ sender: Any) {
        if capSwitch.isOn {
            performSegue(withIdentifier: "bluePill", sender: nil)
        }
    }
 
    @IBAction func capSwitchTapped(_ sender: UISwitch) {
        if sender.isOn {
            capTitle.text = "Cap"
        } else {
            capTitle.text = "No cap"
        }
    }
}
