//
//  ViewController.swift
//  tallyApp
//
//  Created by Paul Stewart on 9/30/23.
//

import UIKit

class ViewController: UIViewController {
    
    //variables
    
    var tally = 0
    
    //outlets
    
    @IBOutlet weak var bigTallyButton: UIButton!
    
    @IBOutlet weak var counterLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterLabel.text = "0"
        
    }
    
    
    
    @IBAction func buttonFullyPressed(_ sender: UIButton) {
        tally += SharedData.shared.countBy
        counterLabel.text = "\(tally)"
        print(tally)
    }
    
    
    @IBAction func buttonHalfPressed(_ sender: UIButton) {
        bigTallyButton.tintColor = .init(red: 0.68235294118, green: 0.68235294118, blue: 0.69019607843, alpha: 1.0)

    }
    
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        let alertController = UIAlertController(
                   title: "Are you sure?",
                   message: "Do you want to reset the counter to 0?",
                   preferredStyle: .alert
               )

               let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)

               let resetAction = UIAlertAction(title: "Reset", style: .destructive) { _ in
                   self.counterLabel.text = "0" // Reset the label value to 0
                   self.tally = 0
               }

               alertController.addAction(cancelAction)
               alertController.addAction(resetAction)

               present(alertController, animated: true, completion: nil)
           }
       }
    



