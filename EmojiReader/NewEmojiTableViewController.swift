//
//  NewEmojiTableViewController.swift
//  EmojiReader
//
//  Created by Роман on 30.07.2024.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {

    

    @IBOutlet weak var emojiUITextField: UITextField!
    @IBOutlet weak var nameUITextField: UITextField!
    @IBOutlet weak var descriptionUITextField: UITextField!
     
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
         
    } 
}
