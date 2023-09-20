//
//  ViewController.swift
//  light_project
//
//  Created by Paul Stewart on 8/30/23.
//

import UIKit

class ViewController: UIViewController {

    var lightOn = true
    
    
    @IBOutlet weak var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }


    fileprivate func updateUI() {
        if lightOn {
            view.backgroundColor = .white
            lightButton.tintColor = .black
            lightButton.setTitle("Off", for: .normal)
            
        } else {
            view.backgroundColor = .black
            lightButton.tintColor = .white
            lightButton.setTitle("On", for: .normal)
        }
    }
    
    @IBAction func lightSwitch(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
}

