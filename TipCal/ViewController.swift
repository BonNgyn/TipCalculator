//
//  ViewController.swift
//  TipCal
//
//  Created by Bonnie Nguyen on 6/14/16.
//  Copyright © 2016 Bonnie Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
        print("hi")
    }

    @IBAction func calculateTip(sender: AnyObject) {
        
        let tipPercent = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercent[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    
       
    }
}

