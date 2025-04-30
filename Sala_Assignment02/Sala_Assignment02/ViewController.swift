//
//  ViewController.swift
//  Sala_Assignment02
//
//  Created by Sravya Geethika Sala on 2/6/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UITextField!
    
    
    @IBOutlet weak var billAmountOutlet: UITextField!
    
    @IBOutlet weak var tipPercentageOutlet: UITextField!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var billAmountLabel: UILabel!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SubmitBTN(_ sender: Any) {
        // variable input
                var name = nameOutlet.text!
                var billAmount = Double(billAmountOutlet.text!)!
                var tipPercentage = Double(tipPercentageOutlet.text!)!
                var tipAmount = billAmount * (tipPercentage / 100)
                var totalAmount = billAmount + tipAmount

                nameLabel.text = "Name: \(name)"
                billAmountLabel.text = "Bill Amount: $\(String(format: "%.2f", billAmount))"
                tipAmountLabel.text = "Tip Amount: $\(String(format: "%.2f", tipAmount))"
                totalAmountLabel.text = "Total Amount: $\(String(format: "%.2f", totalAmount))"

    }
    
    @IBAction func ResetBTN(_ sender: Any) {
        nameLabel.text = ""
                billAmountLabel.text = ""
                tipAmountLabel.text = ""
                totalAmountLabel.text = ""
    }
}

