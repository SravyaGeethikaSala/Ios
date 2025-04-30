//
//  ViewController.swift
//  Sala_Exam01
//
//  Created by Sravya Geethika Sala on 2/25/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var pm25OL: UITextField!
    
    @IBOutlet weak var pm10OL: UITextField!
    
    
    @IBOutlet weak var messageOL: UILabel!
    
    @IBOutlet weak var imageOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func checkQualityBtn(_ sender: Any) {
        let pm25Text = pm25OL.text ?? ""
        let pm10Text = pm10OL.text ?? ""
        
        if pm25Text.isEmpty || pm10Text.isEmpty {
            messageOL.text = "Please enter the input values for PM2.5 and PM10."
            imageOL.image = nil  // Updated name
            return
        }
        
        if let pm25 = Double(pm25Text), let pm10 = Double(pm10Text) {
            let aqc = (pm25 + pm10) / 2
            let roundedAQC = String(format: "%.1f", aqc)
            var category = ""
            var imageName = ""
            var emoji=""
            
            if aqc < 50 {
                category = "best👍"
                imageName = "Best"
            } else if aqc >= 50 && aqc < 100 {
                category = "moderate"
                imageName = "Moderate"
                emoji="😕"
            } else {
                category = "poor"
                imageName = "Poor"
                emoji="😢"
            }
            
            messageOL.text = "The AQC value is \(roundedAQC).\nThis is considered to be \(category) quality air\(emoji)."
            imageOL.image = UIImage(named: imageName)
        } else {
            messageOL.text = "Please enter the valid numeric values for PM2.5 and PM10."
            imageOL.image = nil
        }
    }
    
    @IBAction func resetBtn(_ sender: Any) {
        pm25OL.text = ""
        pm10OL.text = ""
        messageOL.text = ""
        imageOL.image = nil
    }
}
