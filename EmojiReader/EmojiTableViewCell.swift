//
//  EmojiTableViewCell.swift
//  EmojiReader
//
//  Created by Роман on 30.07.2024.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var nameUILabel: UILabel!
    @IBOutlet weak var descriptionUILabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
