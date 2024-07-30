//
//  NewEmojiTableViewController.swift
//  EmojiReader
//
//  Created by Роман on 30.07.2024.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {
    
    var emoji = Emoji(emoji: "", name: "", description: "", isFavorite: false)
    
    @IBOutlet weak var emojiUITextField: UITextField!
    @IBOutlet weak var nameUITextField: UITextField!
    @IBOutlet weak var descriptionUITextField: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        updateSabeButtonState()
    }
    
    private func updateSabeButtonState() {
        let emojiText = emojiUITextField.text ?? ""
        let nameText = nameUITextField.text ?? ""
        let descriptionText = descriptionUITextField.text ?? ""
        
        saveButton.isEnabled = !emojiText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty
    }
    
    private func updateUI() {
        emojiUITextField.text = emoji.emoji
        nameUITextField.text = emoji.name
        descriptionUITextField.text = emoji.description
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        updateSabeButtonState()
    }
    
    override func prepare(for segue: UIStoryboardSegue,  sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else { return }
        
        let emoji = emojiUITextField.text ?? ""
        let name = nameUITextField.text ?? ""
        let description = descriptionUITextField.text ?? ""
        
        self.emoji = Emoji(emoji: emoji, name: name, description: description, isFavorite: self.emoji.isFavorite)
    }
}
