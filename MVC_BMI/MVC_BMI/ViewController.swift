//
//  ViewController.swift
//  MVC_BMI
//
//  Created by Sravya Geethika Sala on 3/25/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var hFeetOL: UITextField!
    
    @IBOutlet weak var hInchesOL: UITextField!
    
    
    @IBOutlet weak var wLbsOL: UITextField!
    
    var feet = 0
    var inches = 0
    var lbs = 0.0
    var bmi = 0.0
    var categoryName = ""
    var imgName = ""
    var healthAdvice = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateBtn(_ sender: UIButton) {
        // Read the input and covert it to integer
        feet = Int(hFeetOL.text!)!
        inches = Int(hInchesOL.text!)!
        lbs = Double(wLbsOL.text!)!
        
        var height = feet * 12 + inches
        bmi = 703 * (lbs / Double(height * height))
        
        if bmi < 18.5 {
            categoryName = "Underweight"
            imgName = "underWeight"
            healthAdvice = "Eat more protein and healthy fats."
        }
        else if bmi < 25 {
            categoryName = "Normal"
            imgName = "normal"
            healthAdvice = "Maintain a balanced diet."
        }
        else if bmi < 30 {
            categoryName = "Overweight"
            imgName = "overWeight"
            healthAdvice = "Eat less processed foods and increase physical activity."
        }
        else {
            categoryName = "Obese"
            imgName = "obese"
            healthAdvice = "Prioritize weight loss and maintain a healthy lifestyle."
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue" {
            // Create the destination as ResultVC
            var destination = segue.destination as! ResultViewController
            destination.enteredHfeet = feet
            destination.enteredHinches = inches
            destination.enteredWlbs = Int(lbs)
            destination.bmiresult = bmi
            destination.categoryMessage = categoryName
            destination.healthMessage = healthAdvice
            destination.bmiImageName = imgName
        }
    }
}
