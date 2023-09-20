//
//  ViewController.swift
//  calculator
//
//  Created by Paul Stewart on 9/1/23.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var textView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calculatorClear(_ sender: Any) {
        if Int(textView.text!) != nil {
            textView.text!.removeAll()
        }
    }
    
    @IBAction func calculatorNine(_ sender: UIButton) {
            textView.text! += String(9)
        }
    @IBAction func calculatorEight(_ sender: Any) {
        textView.text! += String(8)
    }
    
    @IBAction func calculatorSeven(_ sender: Any) {
        textView.text! += String(7)
    }
    
    @IBAction func calculatorSix(_ sender: Any) {
        textView.text! += String(6)
    }
    
    @IBAction func calculatorFive(_ sender: Any) {
        textView.text! += String(5)
    }
    
    @IBAction func calculatorFour(_ sender: Any) {
        textView.text! += String(4)
    }
    
    @IBAction func calculatorThree(_ sender: Any) {
        textView.text! += String(3)
    }
    
    @IBAction func calculatorTwo(_ sender: Any) {
        textView.text! += String(2)
    }
    
    @IBAction func calculatorOne(_ sender: Any) {
        textView.text! += String(1)
    }
    
    @IBAction func calculatorZero(_ sender: Any) {
        textView.text! += String(0)
    }
    
    @IBAction func calculatorDecimal(_ sender: Any) {
    }
}

