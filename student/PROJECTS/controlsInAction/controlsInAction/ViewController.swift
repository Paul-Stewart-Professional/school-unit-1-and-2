//
//  ViewController.swift
//  controlsInAction
//
//  Created by Paul Stewart on 8/31/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressButton(_ sender: Any) {
        print("The button has been tapped")
    }
    
   
    
    @IBAction func switchSwitched(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch is enabled")
        
        } else {
            print("Switch is disabled")
        }
    }
    
   
    
    @IBAction func sliderSwiped(_ sender: UISlider) {
        print(sender.value)
    }
    
    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        
        if let text = sender.text {
            print(sender.text!)
        }
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
        
    }
    
    
    @IBAction func secretTunnel(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print("Tapped on \(location)")
    }
    
}

