//
//  ViewController2.swift
//  CurveBall
//
//  Created by Nathan on 3/21/18.
//  Copyright © 2018 Nathan Lee. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var shortLabel: UILabel!
    @IBOutlet weak var medLabel: UILabel!
    @IBOutlet weak var longLabel: UILabel!
    
    @IBAction func datepick(_ sender: UIDatePicker) {
        let dates = sender
        let formatShort = DateFormatter()
        let formatMed = DateFormatter()
        let formatLong = DateFormatter()
        formatShort.dateStyle = .short
        formatMed.dateStyle = .medium
        formatLong.dateStyle = .long
        shortLabel.text = formatShort.string(from: dates.date)
        medLabel.text = formatMed.string(from: dates.date)
        longLabel.text = formatLong.string(from: dates.date)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
