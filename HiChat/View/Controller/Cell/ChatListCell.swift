//
//  ChatCell.swift
//  HiChat
//
//  Created by Mac on 8/20/21.
//

import UIKit

class ChatListCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var message: UILabel!
    
    @IBOutlet weak var photo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
