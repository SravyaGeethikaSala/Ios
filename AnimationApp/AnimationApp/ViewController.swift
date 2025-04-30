//
//  ViewController.swift
//  AnimationApp
//
//  Created by Sravya Geethika Sala on 3/18/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var happyOL: UIButton!
    
    @IBOutlet weak var sadOL: UIButton!
    
    @IBOutlet weak var angryOL: UIButton!
    
    @IBOutlet weak var shakeMeOL: UIButton!
    
    @IBOutlet weak var showOL: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //move the image to max x value or outside of the view similarly move the other components outside of the view
        
        imageOL.frame.origin.x = view.frame.maxX
        happyOL.frame.origin.x = view.frame.width
        sadOL.frame.origin.x = view.frame.width
        angryOL.frame.origin.x = view.frame.width
        shakeMeOL.frame.origin.x = view.frame.width
        showOL.frame.origin.x = view.frame.width
    }
    
    @IBAction func happyBtnClicked(_ sender: Any) {
        //making current image as opaque
         UIView.animate(withDuration: 5, animations: {
             self.imageOL.alpha = 0
             
         })
         //change the image and make it transparent
         //alpha = 1
         UIView.animate(withDuration: 5, delay: 2, animations: {
             self.imageOL.alpha = 1
             self.imageOL.image = UIImage(named: "happy")
         })
    }
    
    
    @IBAction func sadBtnClicked(_ sender: Any) {
        updateImage("sad")
    }
    
    @IBAction func angryBtnClicked(_ sender: Any) {
        updateImage("angry")

    }
    
    @IBAction func shakeMebtnClicked(_ sender: Any) {
        //width of the image  view frame
        var width = view.frame.width
        width += 40
        var height = view.frame.height
        height += 40
        var x = imageOL.frame.origin.x-30
        var y = imageOL.frame.origin.y-30
        var largeFrame = CGRect(x: x, y: y, width: width, height: height)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 40, animations: {
            self.imageOL.frame = largeFrame
            
        })
    }
    
    @IBAction func showbtnClicked(_ sender: Any) {
        //all the comoponents would be placed back to their original position
        UIView.animate(withDuration: 1, animations: {
            self.imageOL.center.x = self.view.center.x
            self.happyOL.center.x = self.view.center.x
            self.sadOL.center.x = self.view.center.x
            self.angryOL.center.x = self.view.center.x
            self.shakeMeOL.center.x = self.view.center.x
        })
       //disable the show button
        showOL.isEnabled = false
    }
    
    func updateImage(_ imageName : String){
        //making current image as opaque
        UIView.animate(withDuration: 5, animations: {
            self.imageOL.alpha = 0
            
        })
        //change the image and make it transparent
        //alpha = 1
        UIView.animate(withDuration: 5, delay: 2, animations: {
            self.imageOL.alpha = 1
            self.imageOL.image = UIImage(named: imageName)
        })
    }
    
}

