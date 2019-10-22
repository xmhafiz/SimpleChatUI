//
//  ChatListViewCell.swift
//  ChatSample
//
//  Created by Hafiz on 22/10/2019.
//  Copyright © 2019 Nibs. All rights reserved.
//

import UIKit

class ChatListViewCell: UITableViewCell {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var senderLabel: UILabel!
    @IBOutlet weak var chatTimeLabel: UILabel!
    @IBOutlet weak var chatTitleLabel: UILabel!
    @IBOutlet weak var chatImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        chatImageView.rounded(radius: chatImageView.frame.width/2)
    }
    
    func configure(chat: Chat) {
        chatTitleLabel.text = chat.title
        if let senderName = chat.sender {
            senderLabel.isHidden = false
            senderLabel.text = senderName + ":"
        }
        else {
            senderLabel.isHidden = true
        }
        
        messageLabel.text = chat.latestMessage
        chatImageView.image = UIImage(named: chat.imageName)
    }
}
