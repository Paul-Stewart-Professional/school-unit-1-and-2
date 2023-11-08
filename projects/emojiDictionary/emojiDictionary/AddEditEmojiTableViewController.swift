//
//  TableViewController.swift
//  emojiDictionary
//
//  Created by Paul Stewart on 10/24/23.
//

import UIKit

class AddEditEmojiTableViewController: UITableViewController {
    
    
    @IBOutlet weak var symbolTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var usageTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let emoji = emoji {
            symbolTextField.text = emoji.symbol
            nameTextField.text = emoji.name
            descriptionTextField.text = emoji.description
            usageTextField.text = emoji.usage
            title = "Edit Emoji"
        } else {
            title = "Add Emoji"
        }
        updateSaveButtonState()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44.0
    }
    
    func updateSaveButtonState() {
        //        let symbolText = symbolTextField.text ?? ""
        let nameText = nameTextField.text ?? ""
        let descriptionText = descriptionTextField.text ?? ""
        let usageText = usageTextField.text ?? ""
        //save button if none are empty, and symbolTextField .containsSingleEmoji
        saveButton.isEnabled = containsSingleEmoji(symbolTextField) &&
        !nameText.isEmpty && !descriptionText.isEmpty &&
        !usageText.isEmpty
    }
    
    @IBAction func textEditingChanged(_ sender: UITextField) {
        updateSaveButtonState()
    }
    
    func containsSingleEmoji(_ textField: UITextField) -> Bool {
        //guard is only one character
        guard let text = textField.text, text.count == 1 else { return false }
        //if text is emoji return true, else return false
        let isEmoji = text.unicodeScalars.first?.properties.isEmojiPresentation ?? false
        return isEmoji
    }
    
    // MARK: - Table view data source
    
    
    var emoji: Emoji?
    init?(coder: NSCoder, emoji: Emoji?) {
        self.emoji = emoji
        super.init(coder: coder)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "saveUnwind" else { return }
        let symbol = symbolTextField.text!
        let name = nameTextField.text ?? ""
        let description = descriptionTextField.text ?? ""
        let usage = usageTextField.text ?? ""
        emoji = Emoji(symbol: symbol, name: name, description: description, usage: usage)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
