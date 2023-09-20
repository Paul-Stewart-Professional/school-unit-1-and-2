//
//  ViewController.swift
//  UI_Builder
//
//  Created by Paul Stewart on 8/29/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func changeTitle(_ sender: Any) {
        if mainLabel.text == "This app rocks" {
            mainLabel.text = "This is a label named label"
        } else {
            mainLabel.text = "This app rocks"
        }
    }
    
}
