//
//  ViewController5.swift
//  CurveBall
//
//  Created by Nathan on 3/22/18.
//  Copyright © 2018 Nathan Lee. All rights reserved.
//

import UIKit

class ViewController5: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    var quotes: [String: [String]] = [
        "Favorite Quotes": ["Sandwiches and Cats","I hate you, you hate me. We all hate eachother like a big family...", "GTFO"],
        "Quote Bank": ["I Like Pizza","Kitten Sandwiches are good","STFU by Pink Guy","Taco Flavored Kisses","Stick of Truth by Eric Cartman"]
    ]
    let headers = ["Favorite Quotes", "Quote Bank"]
    
    @IBOutlet weak var tableView: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return headers.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let header = headers[section]
        return quotes[header]!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let header = headers[indexPath.section]
        cell.textLabel?.text = quotes[header]![indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headers[section]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            quotes["Quote Bank"]!.append(quotes["Favorite Quotes"]![indexPath.row])
            quotes["Favorite Quotes"]?.remove(at: indexPath.row)
            tableView.reloadData()
        }
        else {
            quotes["Favorite Quotes"]!.append(quotes["Quote Bank"]![indexPath.row])
            quotes["Quote Bank"]?.remove(at: indexPath.row)
            tableView.reloadData()
        }
        return
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

