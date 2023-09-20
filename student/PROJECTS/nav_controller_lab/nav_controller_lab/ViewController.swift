//
//  ViewController.swift
//  nav_controller_lab
//
//  Created by Paul Stewart on 9/14/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var forgotUsernameButton: UIButton!
    
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        segue.destination.navigationItem.title = userNameTextField.text
//
        guard let sender = sender as? UIButton else {return}
                     if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = userNameTextField.text
        }

        }
    
    @IBAction func forgotUsernameButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "loginToWelcome", sender: forgotUsernameButton)
    }
    
    @IBAction func forgotPasswordButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "loginToWelcome", sender: forgotPasswordButton)
    }
    
    
    
    }

