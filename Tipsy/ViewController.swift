//
//  ViewController.swift
//  Tipsy
//
//  Created by Bjørn Eivind Rostad on 8/17/14.
//  Copyright (c) 2014 Bjørn Eivind Rostad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalLabelForTwo: UILabel!
    @IBOutlet weak var totalLabelForThree: UILabel!
    @IBOutlet weak var totalLabelForFour: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipLabel.text = "$0.00"
        totalLabel.text = "-"
        totalLabelForTwo.text = "-"
        totalLabelForThree.text = "-"
        totalLabelForFour.text = "-"
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        println("User editing bill")
        
        var tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        var totalForTwo = (billAmount + tip) / 2
        var totalForThree = (billAmount + tip) / 3
        var totalForFour = (billAmount + tip) / 4
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        totalLabelForTwo.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        totalLabelForTwo.text = String(format: "$%.2f", totalForTwo)
        totalLabelForThree.text = String(format: "$%.2f", totalForThree)
        totalLabelForFour.text = String(format: "$%.2f", totalForFour)
        
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

