//
//  ViewController.swift
//  ClimateApp
//
//  Created by Sravya Geethika Sala on 1/23/25.
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
        var temp = inputOL.text!
        
        var temperature = Int(temp)!
        
        if (temperature > 60){
                    outputOL.text = "the temperature is \(temp) its hot🔥"
                    imageOL.image = UIImage(named: "hot")
                }
                else {
                    outputOL.text="the temperature is \(temp) its cold🥶"
                    imageOL.image = UIImage(named : "cool")
                }
        
    }
}

