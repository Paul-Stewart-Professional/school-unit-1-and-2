//
//  ViewController.swift
//  textValidation
//
//  Created by Paul Stewart on 10/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    //vars
    var banana = "banana"
    var specialCharactersArray = ["@", ",", ".", "!", "@", "#", "$", "%", "^", "&", "*", "<", ">", "?", "+", "=", "-"]
    var doesContainSpecialCharacter = false
    var passIsLongEnough = false
    var passDoesMeetRequirements = false
    
    
    //outlets
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var passwordIntegrityLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //parameters
    func isLongEnough() {
        if passwordTextField.text!.count >= 8 {
            print("username is long enough")
            passIsLongEnough = true
        } else {
            passIsLongEnough = false
            notEnoughCharacters()
        }
    }
    
    func notEnoughCharacters() {
        passwordIntegrityLabel.text = "Password must be at least 8 characters"
    }
    
    func containsSpecialSymbol() {
        for character in specialCharactersArray {
            if passwordTextField.text!.contains(character) {
                print("Password contains special character")
                doesContainSpecialCharacter = true
                break
            } else {
                doesContainSpecialCharacter = false
                noSpecialCharacters()
            }
        }
        
    }
    func noSpecialCharacters() {
        passwordIntegrityLabel.text = "Password must contain a special character"
    }
    
    func clearErrorMessage() {
        if passDoesMeetRequirements == true {
            passwordIntegrityLabel.text = ""
        }
    }
    func passMeetsRequirements() {
        if passIsLongEnough == true && doesContainSpecialCharacter == true  && !passwordTextField.text!.isEmpty{
            passDoesMeetRequirements = true
        } else {
            passDoesMeetRequirements = false
        }
    }
    
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        containsSpecialSymbol()
        isLongEnough()
        passMeetsRequirements()
        clearErrorMessage()
        if passDoesMeetRequirements {
            performSegue(withIdentifier: "blahBlahBlah", sender: UIButton())
        }
    }
}

