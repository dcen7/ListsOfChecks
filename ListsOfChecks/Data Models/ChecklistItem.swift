//
//  ChecklistItem.swift
//  ListsOfChecks
//
//  Created by Mehmet Deniz Cengiz on 7/11/22.
//

import Foundation

class ChecklistItem: NSObject, Codable {
    var text  = ""
    var checked = false
    var dueDate = Date()
    var shouldRemind = false
    var itemID = -1
    
    override init() {
        super.init()
        itemID = DataModel.nextChecklistItemID()
    }
}
