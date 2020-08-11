//
//  ViewController.swift
//  TipCalculator
//
//  Created by Avni Avdulla on 8/10/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        // dismisses the keyboard
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        // get bill ammount & tip percentage
        let bill = Double(billField.text!) ?? 0
        let tipPercents = [0.15, 0.18, 0.2]
        // calculate tip and total
        let tip = bill * tipPercents[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        // update tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

