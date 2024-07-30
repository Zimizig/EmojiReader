//
//  EmojiTableViewController.swift
//  EmojiReader
//
//  Created by Роман on 25.07.2024.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    let objects = [
        Emoji(emoji: "🥰", name: "Love", description: "Let`s love each other", isFavorite: false),
        Emoji(emoji: "⚽️", name: "Football", description: "Let`s play football together", isFavorite: false),
        Emoji(emoji: "🐱", name: "Cat", description: "Cat is the cutest animal", isFavorite: false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Emoji Reader"
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        
        tableView.backgroundColor = .brown
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return objects.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "emojiCell", for: indexPath) as! EmojiTableViewCell
        let object = objects[indexPath.row]
        
        cell.set(object: object)
        
        return cell
    }
    
}
