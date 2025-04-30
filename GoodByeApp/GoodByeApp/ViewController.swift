//
//  ViewController.swift
//  GoodByeApp
//
//  Created by Sravya Geethika Sala on 1/23/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var input1: UITextField!
    
    
    @IBOutlet weak var input2: UITextField!
    
    
    @IBOutlet weak var output: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitbtn(_ sender: Any) {
        var fname = input1.text!
        var lname = input2.text!
        
        output.text = "GoodBye, \(fname) \(lname)!"
    }
    
}

