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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        println("User editing bill")
        
        var billAmount = NSString(string: billField.text).doubleValue
        var tip = billAmount * 0.2
        var total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }

}

