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
    @IBOutlet weak var tipLabelForTwo: UILabel!
    @IBOutlet weak var tipLabelForThree: UILabel!
    @IBOutlet weak var tipLabelForFour: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalLabelForTwo: UILabel!
    @IBOutlet weak var totalLabelForThree: UILabel!
    @IBOutlet weak var totalLabelForFour: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var tipPlaceholder = ""
        var totalPlaceholder = "-"
        
        tipLabel.text = tipPlaceholder
        totalLabel.text = totalPlaceholder

        tipLabelForTwo.text = tipPlaceholder
        totalLabelForTwo.text = totalPlaceholder

        tipLabelForThree.text = tipPlaceholder
        totalLabelForThree.text = totalPlaceholder

        tipLabelForFour.text = tipPlaceholder
        totalLabelForFour.text = totalPlaceholder

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onEditingChanged(sender: AnyObject) {
        println("User editing bill")
        
        var tipPercentages = [0.14, 0.18, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text).doubleValue
        
        var tip = billAmount * tipPercentage
        var tipForTwo = (billAmount * tipPercentage) / 2
        var tipForThree = (billAmount * tipPercentage) / 3
        var tipForFour = (billAmount * tipPercentage) / 4
        
        var total = billAmount + tip
        var totalForTwo = (billAmount/2) + tipForTwo
        var totalForThree = (billAmount/3) + tipForThree
        var totalForFour = (billAmount/4) + tipForFour
        

        
        tipLabel.text = String(format: "incl $%.2f tip", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        tipLabelForTwo.text = String(format: "incl $%.2f tip", tipForTwo)
        totalLabelForTwo.text = String(format: "$%.2f", totalForTwo)
        
        tipLabelForThree.text = String(format: "incl $%.2f tip", tipForThree)
        totalLabelForThree.text = String(format: "$%.2f", totalForThree)
        
        tipLabelForFour.text = String(format: "incl $%.2f tip", tipForFour)
        totalLabelForFour.text = String(format: "$%.2f", totalForFour)

        
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

