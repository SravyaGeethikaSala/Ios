//
//  ViewController.swift
//  LibraryApp
//
//  Created by Sravya Geethika Sala on 4/3/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func fictionButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "showFiction", sender: nil)
    }
    
    
    @IBAction func nonFictionButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "showNonFiction", sender: nil)
    }
    
    @IBAction func sciFiButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "showSciFi", sender: nil)
    }
}

