//
//  LeftViewCell.swift
//  ChatSample
//
//  Created by Hafiz on 20/09/2019.
//  Copyright © 2019 Nibs. All rights reserved.
//

import UIKit

class LeftViewCell: UITableViewCell {

    @IBOutlet weak var messageContainerView: UIView!
    @IBOutlet weak var textMessageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        messageContainerView.rounded(radius: 12)
        messageContainerView.backgroundColor = .white
        
        contentView.backgroundColor = .clear
        backgroundColor = .clear
    }
    
    func configureCell(message: Message) {
        textMessageLabel.text = message.text
    }
    
}
