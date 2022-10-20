//
//  Checklist.swift
//  ListsOfChecks
//
//  Created by Mehmet Deniz Cengiz on 10/19/22.
//

import UIKit

class Checklist: NSObject {
    var name = ""
    var items = [ChecklistItem]()
    
    init(name: String) {
        self.name = name
        super.init()
    }
}
