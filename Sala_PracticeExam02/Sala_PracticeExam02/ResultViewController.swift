//
//  ResultViewController.swift
//  Sala_PracticeExam02
//
//  Created by Sravya Geethika Sala on 4/1/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var activityLabel: UILabel!
    
    
    @IBOutlet weak var durationLabel: UILabel!
    
    
    @IBOutlet weak var caloriesLabel: UILabel!
    
    
    @IBOutlet weak var totalCaloriesLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
        var activityType: String = ""
        var duration: Double = 0.0
        var caloriesPerMinute: Double = 0.0
        var totalCaloriesBurned: Double = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityLabel.text = "Activity: \(activityType)"
                durationLabel.text = "Duration: \(Int(duration)) minutes"
                caloriesLabel.text = "Calories/Min: \(Int(caloriesPerMinute))"
                totalCaloriesLabel.text = "Total Calories: \(totalCaloriesBurned)"
                
                setActivityImage()
                
                imageView.alpha = 0.0
                UIView.animate(withDuration: 1.5) {
                    self.imageView.alpha = 1.0
                }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    func setActivityImage() {
        switch activityType.lowercased() {
                case "running":
                    imageView.image = UIImage(named: "running.png")
                case "cycling":
                    imageView.image = UIImage(named: "cycling.png")
                case "swimming":
                    imageView.image = UIImage(named: "swimming.png")
                default:
                    imageView.image = UIImage(named: "default.png")
                }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
                
                // Clear input fields when returning to ViewController
                if let presentingVC = presentingViewController as? ViewController {
                    presentingVC.activityTextField.text = ""
                    presentingVC.durationTextField.text = ""
                    presentingVC.caloriesTextField.text = ""
                }
            }
}
