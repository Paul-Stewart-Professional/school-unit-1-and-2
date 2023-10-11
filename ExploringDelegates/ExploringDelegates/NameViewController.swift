//
//  ViewController.swift
//  ExploringDelegates
//
//  Created by Mike Collier on 10/10/22.
//

import UIKit

class NameViewController: UIViewController {
    let showDetailSegueIdentifier = "showDetail"
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.delegate = self
    }
    
    @IBAction func doneTapped(_ sender: Any) {
        nameField.resignFirstResponder()
    }
    
    @IBAction func selectColorTapped(_ sender: Any) {
        performSegue(withIdentifier: showDetailSegueIdentifier, sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? ColorSelectViewController else { return }
    }
}

extension NameViewController: UITextFieldDelegate {
    public func textFieldDidEndEditing(_ textField: UITextField) {
        guard let text = textField.text, !text.isEmpty else { return }
        nameLabel.text = "Hello \(text)"
    }
}
