//
//  ViewController.swift
//  CurveBall
//
//  Created by Nathan on 3/21/18.
//  Copyright © 2018 Nathan Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var onoffLabel: UILabel!
    var isOn: Bool = true
    @IBAction func switchAction(_ sender: UISwitch) {
        isOn = !isOn
        print(isOn)
        if isOn == true {
            onoffLabel.text = "Switch is On!"
        }
        else {
            onoffLabel.text = "Switch is Off!"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onoffLabel?.text = "Switch is On!"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

