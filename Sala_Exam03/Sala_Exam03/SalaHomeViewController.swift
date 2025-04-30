//
//  ViewController.swift
//  Sala_Exam03
//
//  Created by Sravya Geethika Sala on 4/22/25.
//

import UIKit

class SalaHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    @IBOutlet weak var salaTVOL: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Games"
                salaTVOL.delegate = self
                salaTVOL.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return games.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SalaCell", for: indexPath)
            cell.textLabel?.text = games[indexPath.row].name
            return cell
        }

        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            performSegue(withIdentifier: "SalaDescriptionSegue", sender: indexPath)
        }

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "SalaDescriptionSegue",
               let destinationVC = segue.destination as? SalaGameController,
               let indexPath = sender as? IndexPath {
                destinationVC.selectedGame = games[indexPath.row]
            }
        }  
}

