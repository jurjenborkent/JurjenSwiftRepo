//
//  MessageCell.swift
//  DataMetFirebase
//
//  Created by Jurjen on 15/01/2017.
//  Copyright © 2017 Jurjen. All rights reserved.
//

import UIKit


class MessageCell: UITableViewCell {
    
    
    @IBOutlet weak var msgTextLabel: UILabel!
    
    var msg: Message!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configureCell(msg: Message) {
        self.msg = msg
        self.msgTextLabel.text = msg.msgText
    }
    
}

