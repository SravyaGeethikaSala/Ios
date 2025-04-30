//
//  ViewController.swift
//  StringInitialsApp
//
//  Created by Sravya Geethika Sala on 1/30/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var fnameOL: UITextField!
    
    
    @IBOutlet weak var lnameOL: UITextField!
    
    
    @IBOutlet weak var outputOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitbtn(_ sender: Any) {
        // Read the first name and store it in a variable
        var fname = fnameOL.text!
        // Read the last name and store it in a variable
        var lname = lnameOL.text!
        // We need to get first letter of firstname and first letter of last name and convert to uppercase
        var firstInitial = fname.prefix(1).uppercased()
        var lastInitial = lname.prefix(1).uppercased()
        
        // Display result in the outputOL
        outputOL.text = "Your Initials are: \(firstInitial). \(lastInitial)."
    }
    
}

