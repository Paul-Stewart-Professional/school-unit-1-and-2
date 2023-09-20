//
//  ViewController.swift
//  follow_along
//
//  Created by Paul Stewart on 9/18/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let date = Date().description
        label.text = date.description
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        label.text = Date().description
    }

}

