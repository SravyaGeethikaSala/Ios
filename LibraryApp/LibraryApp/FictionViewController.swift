//
//  FictionViewController.swift
//  LibraryApp
//
//  Created by Sravya Geethika Sala on 4/3/25.
//

import UIKit

class FictionViewController: UIViewController {
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UILabel!
    
    @IBOutlet weak var ShowPrevImageBtn: UIButton!
    
    @IBOutlet weak var ShowNextImageBtn: UIButton!
    
    var arr = ["fiction_book1", "fiction_book2", "fiction_book3"]
        var descriptions = [
            "Fiction Book 1: A captivating story about love and loss.",
            "Fiction Book 2: A thrilling mystery with unexpected twists.",
            "Fiction Book 3: A tale of adventure and self-discovery."
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

    

    @IBAction func prevButtonTapped(_ sender: UIButton) {
        currentImageIndex -= 1
               if currentImageIndex < 0 {
                   currentImageIndex = arr.count - 1 // loop back to the last image
               }
               showImageAndDescription()
    }
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        currentImageIndex += 1
                if currentImageIndex >= arr.count {
                    currentImageIndex = 0 // loop back to the first image
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
