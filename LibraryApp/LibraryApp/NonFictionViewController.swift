//
//  NonFictionViewController.swift
//  LibraryApp
//
//  Created by Sravya Geethika Sala on 4/3/25.
//

import UIKit

class NonFictionViewController: UIViewController {
    
    @IBOutlet weak var topicInfoText: UILabel!
    
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var ShowNextImageBtn: UIButton!
    
    @IBOutlet weak var ShowPrevImageBtn: UIButton!
    
    
    var arr = ["non_fiction_book1", "non_fiction_book2", "non_fiction_book3"]
    var descriptions = [
        "Non-Fiction Book 1: A biography of a great historical figure.",
        "Non-Fiction Book 2: A deep dive into the world of nature.",
        "Non-Fiction Book 3: An inspiring journey through real-life challenges."
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
