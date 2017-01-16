//
//  ViewController.swift
//  DataMetFirebase
//
//  Created by Jurjen on 15/01/2017.
//  Copyright © 2017 Jurjen. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var msgField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var msgs  = [Message]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        tableView.delegate = self
        tableView.dataSource = self
        
        DataService.ds.MSGS_DB_REF.observe(.value, with: { (snapshot) in
            
            self.msgs = []
            
            if let snapshot = snapshot.children.allObjects as? [FIRDataSnapshot] {
                for snap in snapshot {
                    if let postDict = snap.value as? [String: AnyObject]    {
                        let message = Message(msgid: snap.key, msgData: postDict)
                        self.msgs.append(message)
                    }
                }
            }
            self.tableView.reloadData()
            
        })
    
    }




func numberOfSections(in tableView: UITableView) -> Int {
    return 1
}

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return msgs.count
}

func tableView(_ tableView: UITableView, cellForRowAt IndexPath: IndexPath) -> UITableViewCell {
    let msg = msgs[IndexPath.row]
    
    if let cell = tableView.dequeueReusableCell(withIdentifier: "MessageCell") as? MessageCell {
        cell.configureCell(msg: msg)
        return cell
    } else {
        return MessageCell()
    }

}
 
    @IBAction func sendBtnTapped(_ sender: AnyObject) {
        if let msgText = msgField.text, !msgText.isEmpty {
            let msg = [
            "text": msgText
            ]
            
        let FireMsg = DataService.ds.MSGS_DB_REF.childByAutoId()
        FireMsg.setValue(msg)
            
        msgField.text = ""
        tableView.reloadData()
        }
    }
    
}










