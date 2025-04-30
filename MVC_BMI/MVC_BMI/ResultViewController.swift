//
//  ResultViewController.swift
//  MVC_BMI
//
//  Created by Sravya Geethika Sala on 3/25/25.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var enteredHFeetOL: UILabel!
    
    @IBOutlet weak var enteredHInchesOL: UILabel!
    
    @IBOutlet weak var enteredWLbsOL: UILabel!
    
    @IBOutlet weak var resultLabelOL: UILabel!
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    
    var enteredHfeet = 0
    var enteredHinches = 0
    var enteredWlbs = 0
    var bmiresult = 0.0
    var bmiImageName = ""
    var healthMessage = ""
    var categoryMessage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enteredHFeetOL.text = enteredHFeetOL.text! + String(enteredHfeet)
        enteredHInchesOL.text = enteredHInchesOL.text! + String(enteredHinches)
        enteredWLbsOL.text = enteredWLbsOL.text! + String(enteredWlbs)
        resultLabelOL.text = """
        BMI Value: \(bmiresult) 
        Category: \(categoryMessage) 
        Health Tip: \(healthMessage) 
"""
        imageViewOL.image = UIImage(named: bmiImageName)

        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
