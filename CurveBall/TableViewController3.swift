//
//  TableViewController3.swift
//  CurveBall
//
//  Created by Nathan on 3/21/18.
//  Copyright © 2018 Nathan Lee. All rights reserved.
//

import UIKit

class TableViewController3: UITableViewController {

    var items: [String] = ["Kittens","Sandwich","Superman","Computer", "Spaceship"]
    var desc1: [String] = ["Puppies", "Soup", "Batman", "Calculator", "Starship"]
    var desc2: [String] = ["Kitten Sandwiches", "Hunger", "Lex Luthor", "Rocks & Sticks", "Hoaxer"]
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! TableViewController3CustomCell
        cell.nameLabel.text = items[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let cell = tableView.cellForRow(at: indexPath) as! TableViewController3CustomCell
        let clear = UITableViewRowAction(style: .normal, title: "Clear") {
                (action, indexPath) in
                cell.descLabel.text = ""
                tableView.reloadData()
            }
        let desc1 = UITableViewRowAction(style: .destructive, title: "Opposite") {
                (action, indexPath) in
                cell.descLabel.text = self.desc1[indexPath.row]
                tableView.reloadData()
            }
        let desc2 = UITableViewRowAction(style: .destructive, title: "Evil") {
                (action, indexPath) in
                cell.descLabel.text = self.desc2[indexPath.row]
                tableView.reloadData()
            }
        if cell.descLabel.text == self.desc2[indexPath.row] {
            return[desc1, clear]
        }
        else if cell.descLabel.text == self.desc1[indexPath.row]{
            return[desc2, clear]
        }
        else {
            return[desc1, desc2]
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = 75
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
