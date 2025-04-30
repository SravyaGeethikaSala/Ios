//
//  ViewController.swift
//  HelloApp
//
//  Created by Sravya Geethika Sala on 1/21/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputol: UITextField!
    
    
    
    @IBOutlet weak var outputol: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitbtn(_ sender: Any) {
        var name = inputol.text!
        outputol.text="Hello,\(name)!"
    }
    
}

