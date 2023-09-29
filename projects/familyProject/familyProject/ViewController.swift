//
//  ViewController.swift
//  familyProject
//
//  Created by Paul Stewart on 9/28/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet private var tappableView: UIImageView! 
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dadTapped(_ sender: UITapGestureRecognizer) {
        print("dad was tapped")
    }
    
}

