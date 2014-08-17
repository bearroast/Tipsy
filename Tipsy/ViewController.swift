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


}

