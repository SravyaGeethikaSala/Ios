//
//  SciFiViewController.swift
//  LibraryApp
//
//  Created by Sravya Geethika Sala on 4/3/25.
//

import UIKit

class SciFiViewController: UIViewController {
    
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UILabel!
    
    
    @IBOutlet weak var ShowPrevImageBtn: UIButton!
    
    
    @IBOutlet weak var ShowNextImageBtn: UIButton!
    
    
    var arr = ["scifi_book1", "scifi_book2", "scifi_book3"]
       var descriptions = [
           "Sci-Fi Book 1: A story set in a futuristic world filled with technology.",
           "Sci-Fi Book 2: A space exploration adventure with alien encounters.",
           "Sci-Fi Book 3: A thrilling tale of time travel and parallel universes."
       ]
       
       var currentImageIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
                resultImage.image = UIImage(named: arr[currentImageIndex])
                topicInfoText.text = descriptions[currentImageIndex]
                ShowPrevImageBtn.isEnabled = false

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func nextButtonTapped(_ sender: UIButton) {
        currentImageIndex += 1
               if currentImageIndex >= arr.count {
                   currentImageIndex = 0 // loop back to the first image
               }
               showImageAndDescription()
    }
     
    @IBAction func prevButtonTapped(_ sender: UIButton) {
        currentImageIndex -= 1
                if currentImageIndex < 0 {
                    currentImageIndex = arr.count - 1 // loop back to the last image
                }
                showImageAndDescription()
    }
    
    func showImageAndDescription() {
        resultImage.image = UIImage(named: arr[currentImageIndex])
        topicInfoText.text = descriptions[currentImageIndex]
        
        // Enable/disable buttons based on current image index
        ShowPrevImageBtn.isEnabled = currentImageIndex != 0
        ShowNextImageBtn.isEnabled = currentImageIndex != arr.count - 1
    }
}
