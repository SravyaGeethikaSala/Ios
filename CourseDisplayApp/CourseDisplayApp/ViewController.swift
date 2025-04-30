//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Sravya Geethika Sala on 2/11/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var crsNumOL:
    UILabel!
    
    @IBOutlet weak var crsTitleOL: UILabel!
    
    @IBOutlet weak var semOfferedOL: UILabel!
    
    @IBOutlet weak var prevBtnOL: UIButton!
    
    @IBOutlet weak var nextBtnOL: UIButton!
    var imageIndex = 0
    let courses =
    [["img01","44555","Network Security","Fall 2024"],["img02","44643","Mobile Computing","Summer 2023"],["img03","44222","Data Streaming","Spring 2025"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Update the course details (image, crsNum, crsTitle, sem offered) with the first element in the array.
        updateCourseDetails(imageIndex)
        
        // Previous button is disabled
        prevBtnOL.isEnabled = false
        
        // Next button is enabled
        nextBtnOL.isEnabled = true
        
    }
    
    @IBAction func prevBtnClicked(_ sender: UIButton) {
        // Decrement the imageIndex
        imageIndex -= 1
        // Update the course details
        updateCourseDetails(imageIndex)
        // Next button should be enabled
        nextBtnOL.isEnabled = true
        // If the image index is 0, the previous button must be disabled.
        if(imageIndex == 0){
            prevBtnOL.isEnabled = false
        }
    }
    
    
    @IBAction func nextBtnClicked(_ sender: UIButton) {
        
        // Increment the image
        imageIndex += 1
        
        // Update the Course details
        updateCourseDetails(imageIndex)
        // Check if the element is at the end of the array next button
        if(imageIndex == courses.count-1){
            nextBtnOL.isEnabled = false
        }
    }
    func updateCourseDetails(_imageIndex: Int){
        imageViewOL.image = UIImage(named: courses[imageIndex][0])
        crsNumOL.text = courses[imageIndex][1]
        crsTitleOL.text = courses[imageIndex][2]
        semOfferedOL.text = courses[imageIndex][3]
    }
}

