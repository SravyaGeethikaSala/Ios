//
//  ViewController.swift
//  Voter
//
//  Created by Sravya Geethika Sala on 1/28/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var imageOL: UIImageView!
    
    
    @IBOutlet weak var outputOL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitbtn(_ sender: Any) {
        var input = inputOL.text!
        var age = Int(input)!
        
        if(age<18)
        {
            imageOL.image = UIImage(named:"no")
            outputOL.text = "You are not eligible to vote! 🥺"
        }
        else {
            imageOL.image = UIImage(named:"yes")
            outputOL.text = "You are eligible to vote 😊"
        }
    }
    
}

