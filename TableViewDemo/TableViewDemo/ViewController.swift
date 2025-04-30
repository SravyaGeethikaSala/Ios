//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Sravya Geethika Sala on 4/8/25.
//

import UIKit


class Product{
    var productName:String
    var productDescription:String
    
    init(prodName: String, prodDesc: String) {
        self.productName = prodName
        self.productDescription = prodDesc
    }
    
    
}
 
 
 
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the productArray count
         return productArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            // Create a cell
        let cell =
        tableViewOL.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath)
           //  Populate the cell
        cell.textLabel?.text = productArray[indexPath.row].productName
          //   Return the cell
        return cell
        
        
    }
    
    
    
    @IBOutlet weak var tableViewOL: UITableView!
    
    
    var productArray = [Product]()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewOL.dataSource =  self
        tableViewOL.delegate = self
        
        let product1 = Product(prodName: "iPhone 16", prodDesc: "This is a new iPhone 16")
        productArray.append(product1)
        let product2 = Product(prodName: "MacBook Pro", prodDesc: "This is a new MacBook Pro")
        productArray.append(product2)
        let product3 = Product(prodName: "AirPods Pro", prodDesc: "This is a new AirPods Pro")
        productArray.append(product3)
        let product4 = Product(prodName: "Apple Watch Series 8", prodDesc: "This is a new Apple Watch Series 8")
        productArray.append(product4)
        let product5 = Product(prodName: "iPad Pro 13", prodDesc: "This is a new iPad Pro 13")
        productArray.append(product5)
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tranistion = segue.identifier
        if tranistion == "ProductSegue" {
            var destination = segue.destination as! ResultViewController
            destination.product = productArray[(tableViewOL.indexPathForSelectedRow?.row)!]
            
            
            
        }
    }

}

