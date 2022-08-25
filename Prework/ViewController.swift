//
//  ViewController.swift
//  Prework
//
//  Created by Ellis Alcantara on 8/24/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text fiel
        let bill=Double(billAmountTextField.text!) ?? 0
        // Get Total tip by multiplyingt
        let tipPercentages = [0.15,0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update tip amount label
        totalLabel.text = String(format: "$%.2f", total)
    }
    

}

