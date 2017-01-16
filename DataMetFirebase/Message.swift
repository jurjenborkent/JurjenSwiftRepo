//
//  Message.swift
//  DataMetFirebase
//
//  Created by Jurjen on 15/01/2017.
//  Copyright © 2017 Jurjen. All rights reserved.
//

import Foundation

class Message {
    var msgId: String!
    var msgText: String!
    var postedData: String!
    
    init(msgid: String, msgData: [String: AnyObject]) {
            self.msgId = msgid
        
        if let msgText = msgData ["text"] as? String {
            self.msgText = msgText
        }
        
        if let postedData = msgData["postedData"] as? String {
            self.postedData = postedData
        }
    }
}
