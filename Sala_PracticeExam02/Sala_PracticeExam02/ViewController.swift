//
//  ViewController.swift
//  Sala_PracticeExam02
//
//  Created by Sravya Geethika Sala on 4/1/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var activityTextField: UITextField!
    
    
    @IBOutlet weak var durationTextField: UITextField!
    
    
    @IBOutlet weak var caloriesTextField: UITextField!
    
    
    @IBOutlet weak var calculateButton: UIButton!
    
    
    var totalCaloriesBurned: Double = 0.0
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        calculateButton.isEnabled = false
                activityTextField.addTarget(self, action: #selector(textFieldsChanged), for: .editingChanged)
                durationTextField.addTarget(self, action: #selector(textFieldsChanged), for: .editingChanged)
                caloriesTextField.addTarget(self, action: #selector(textFieldsChanged), for: .editingChanged)
            }
   
    @objc func textFieldsChanged(_ sender: UITextField) {
            if let activity = activityTextField.text, !activity.isEmpty,
               let durationStr = durationTextField.text, let _ = Double(durationStr),
               let caloriesStr = caloriesTextField.text, let _ = Double(caloriesStr) {
                calculateButton.isEnabled = true
            } else {
                calculateButton.isEnabled = false
            }
        }
    
    

    @IBAction func calculateCaloriesBtn(_ sender: UIButton) {
        let activity = activityTextField.text ?? ""
                let durationStr = durationTextField.text ?? ""
                let caloriesStr = caloriesTextField.text ?? ""
                
                if activity.isEmpty || durationStr.isEmpty || caloriesStr.isEmpty {
                    showAlert(message: "Please enter all values.")
                    return
                }
                
                if let duration = Double(durationStr), let caloriesPerMinute = Double(caloriesStr) {
                    totalCaloriesBurned = duration * caloriesPerMinute
                    performSegue(withIdentifier: "ResultSegue", sender: self)  
                } else {
                    showAlert(message: "Please enter valid numerical values for duration and calories burned per minute.")
                }
    }
    
    @IBAction func resetBtn(_ sender: UIButton) {
                activityTextField.text = ""
                durationTextField.text = ""
                caloriesTextField.text = ""
        calculateButton.isEnabled = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ResultSegue" {
                    let destinationVC = segue.destination as! ResultViewController
                    destinationVC.activityType = activityTextField.text ?? ""
                    destinationVC.duration = Double(durationTextField.text ?? "0") ?? 0.0
                    destinationVC.caloriesPerMinute = Double(caloriesTextField.text ?? "0") ?? 0.0
                    destinationVC.totalCaloriesBurned = totalCaloriesBurned
                }
    }
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Invalid Input", message: message, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                present(alert, animated: true, completion: nil)
            }
}

