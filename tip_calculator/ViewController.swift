//
//  ViewController.swift
//  tip_calculator
//
//  Created by MinJoung Kim on 1/26/20.
//  Copyright © 2020 MinJoung Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillAmount: UITextField!
    @IBOutlet weak var TipAmount: UILabel!
    @IBOutlet weak var TotalAmount: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func on_Tap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentage = [0.15, 0.18, 0.2]
        let bill = Double(BillAmount.text!) ?? 0
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        TipAmount.text = String(format: "$%.2f", tip)
        TotalAmount.text = String(format: "$%.2f", total)
    }
    

}
