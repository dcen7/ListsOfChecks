//
//  IconPickerViewController.swift
//  ListsOfChecks
//
//  Created by Mehmet Deniz Cengiz on 10/28/22.
//

import UIKit

protocol IconPickerViewControllerDelegate: AnyObject {
    func iconPicker(_ picker: IconPickerViewController, didPick iconName: String)
}

class IconPickerViewController: UITableViewController {

    let icons = [
      "No Icon", "Appointments", "Birthdays", "Chores",
      "Drinks", "Folder", "Groceries", "Inbox", "Photos", "Trips"
    ]
    
    weak var delegate: IconPickerViewControllerDelegate?
   
   // MARK: Table View Delegates
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return icons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IconCell", for: indexPath)
        let iconName = icons[indexPath.row]
        cell.textLabel!.text = iconName
        cell.imageView!.image = UIImage(named: iconName)
        return cell
    }
}
