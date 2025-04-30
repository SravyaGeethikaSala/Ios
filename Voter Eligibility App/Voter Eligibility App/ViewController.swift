//
//  ViewController.swift
//  Voter Eligibility App
//
//  Created by Sravya Geethika Sala on 1/24/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var outputOL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func checkBtn(_ sender: UIButton) {
        var age:Int = Int(inputOL.text!)!
        
        if age >= 18 {
            outputOL.text = "you are eligible to vote"
            imageview.image = UIImage(named: "yes")
        }
        else{
            outputOL.text = "you are not eligible"
            imageview.image = UIImage(named: "no")
        }
    }
    
}

