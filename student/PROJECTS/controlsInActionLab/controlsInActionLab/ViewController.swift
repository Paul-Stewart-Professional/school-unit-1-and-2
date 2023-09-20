//
//  ViewController.swift
//  controlsInActionLab
//
//  Created by Paul Stewart on 8/31/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet var textField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    } 
    
    
    @IBAction func setTextButtonTapped(_ sender: UIButton) {
        label.text = textField.text
    }
    
    
    
    @IBAction func clearTextButtonTapped(_ sender: UIButton) {
        textField.text = String()
        label.text = String()
        
    }
    
}

