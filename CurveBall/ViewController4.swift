//
//  FetchTableViewController.swift
//  CurveBall
//
//  Created by Nathan on 3/22/18.
//  Copyright © 2018 Nathan Lee. All rights reserved.
//

import  UIKit

class ViewController4: ViewController, UITableViewDataSource, UITableViewDelegate {
    let animals: [String: [String]] = [
        "Animals": ["Chamelon","Crocodile","Iguana","Turtle","Snake","Cat","Dog","Fox","Otter","Dolphin"],
        "Mammals": ["Cat","Dog","Fox","Otter","Dolphin"],
        "Reptiles": ["Chamelon","Crocodile","Iguana","Turtle","Snake"]
    ]
    var data:[String] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func showAnimals(_ sender: UIButton) {
        data = animals["Animals"]!
        tableView.reloadData()
    }
    @IBAction func showReptiles(_ sender: UIButton) {
        data = animals["Mammals"]!
        tableView.reloadData()

    }
    @IBAction func showMammals(_ sender: UIButton) {
        data = animals["Reptiles"]!
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell2", for: indexPath) as! ViewController4CustomCell
        cell.creatureLabel.text = data[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
