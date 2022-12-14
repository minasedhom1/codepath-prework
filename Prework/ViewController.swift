//
//  ViewController.swift
//  Prework
//
//  Created by Mina Sedhom on 8/15/22.
//  Copyright © 2022 Mina Sedhom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentage = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update Tip Amount Label
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        tipAmountLabel.sizeToFit()
        //update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        totalLabel.sizeToFit()
    }
}

