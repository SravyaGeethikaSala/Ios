//
//  ViewController.swift
//  Sala_PracticeExam01
//
//  Created by Sravya Geethika Sala on 2/20/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightFeetOL: UITextField!
    
    @IBOutlet weak var heightInchesOL: UITextField!
    
    @IBOutlet weak var weightOL: UITextField!
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var messageOL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateBMIBtn(_ sender: UIButton) {
        let feetText = heightFeetOL.text ?? ""
              let inchesText = heightInchesOL.text ?? ""
              let weightText = weightOL.text ?? ""
              
              if let feet = Int(feetText), let inches = Int(inchesText), let weight = Double(weightText) {
                  let totalInches = (feet * 12) + inches
                  let bmi = (703 * weight) / pow(Double(totalInches), 2)
                  let roundedBMI = round(bmi * 10) / 10.0
                  
                  var category = ""
                  var healthTip = ""
                  var imageName = ""
                  
                  if roundedBMI <= 18.5 {
                      category = "Underweight"
                      healthTip = "Eat more protein and healthy fats."
                      imageName = "underWeight"
                  } else if roundedBMI >= 18.6 && roundedBMI <= 24.9 {
                      category = "Normal"
                      healthTip = "Excellent! Maintain a balanced lifestyle."
                      imageName = "normal"
                  } else if roundedBMI >= 25 && roundedBMI <= 29.9 {
                      category = "Overweight"
                      healthTip = "Lose weight by maintaining a balanced diet and increasing physical activity."
                      imageName = "overWeight"
                  } else if roundedBMI >= 30 {
                      category = "Obese"
                      healthTip = "Consult a doctor for personalized advice."
                      imageName = "obese"
                  } else {
                      category = "Unknown"
                      healthTip = "Please enter valid values."
                  }
                  
                  messageOL.text = "Your Body Mass Index is \(roundedBMI).\nThis is considered \(category).\nHealth tip: \(healthTip)."
                  imageViewOL.image = UIImage(named: imageName)
              } else {
                  messageOL.text = "Please enter valid values."
              }
    }
    
}






    
    
    
    
    
    
    
