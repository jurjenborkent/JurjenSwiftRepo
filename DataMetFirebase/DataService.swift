//
//  DataService.swift
//  DataMetFirebase
//
//  Created by Jurjen on 15/01/2017.
//  Copyright © 2017 Jurjen. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase

let DB_BASE = FIRDatabase.database().reference()

class DataService {
    static let ds = DataService()
    
    var MSGS_DB_REF = DB_BASE.child("messages")
    
}


