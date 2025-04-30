//
//  ViewController.swift
//  Sala_SearchApp
//
//  Created by Sravya Geethika Sala on 4/1/25.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var topicInfoText: UILabel!
    
    @IBOutlet weak var ShowNextImageBtn: UIButton!
    
    @IBOutlet weak var ShowPrevImageBtn: UIButton!
    
    @IBOutlet weak var ResetBtn: UIButton!
    
    var arr = [
        ["sydney", "eiffel_tower", "taj_mahal"],
        ["elephant", "panda", "tiger"],
        ["telephone","light_bulb", "airplane"],
        ["diwali", "christmas", "holi"],
        ["mars_rover", "hubble_telescope", "moon_landing"]
    ]
    
    // Keywords for each topic
    var famousLandmarks_keywords = ["landmark", "famous", "monument"]
    var wildlifeWonders_keywords = ["wildlife", "animal", "creature", "nature", "habitat"]
    var inventions_keywords = ["invention", "innovation", "technology"]
    var popularFestivals_keywords = ["festival", "celebration", "event"]
    var spaceExploration_keywords = ["space", "planet", "exploration", "astronomy"]
    
    // Descriptions for each topic (array of arrays, each inner array corresponds to a topic's image descriptions)
    var topics_description = [
        // Famous Landmarks
        [
            "The Sydney Opera House comprises three groups of interlocking vaulted 'shells' which roof two main performance halls and a restaurant.",
            "The Eiffel Tower is a globally recognized symbol of Paris and France, offering stunning panoramic views.",
            "The Taj Mahal is a stunning white marble mausoleum, renowned as a symbol of love and an architectural masterpiece.",
        ],
        // Wildlife Wonders
        [
            "Elephants are the largest land animals, known for their intelligence and social structure.",
            "The giant panda is a beloved bear native to China, known for its distinctive black and white fur.",
            "The Bengal tiger is a majestic predator native to the forests of India and Bangladesh."
        ],
        // Inventions & Innovations
        [
            "The telephone, invented by Alexander Graham Bell, revolutionized communication.",
            "The light bulb, created by Thomas Edison, changed the way we live and work.",
            "The airplane, invented by the Wright brothers, allowed humanity to conquer the skies."
        ],
        // Popular Festivals
        [
            "Diwali, the Festival of Lights, is celebrated by millions of people worldwide, particularly in India.",
            "Christmas is a Christian holiday celebrating the birth of Jesus Christ, marked by decorations, gifts, and family gatherings.",
            "Holi is a vibrant Hindu festival celebrated in India and other countries with large Hindu populations, marking the end of winter and the arrival of spring with the playful throwing of colored powders and water."
        ],
        // Space Exploration
        [
            "NASA's robotic rover that explores the surface of Mars for signs of past life.",
            "The Hubble Space Telescope captures stunning images of distant galaxies and nebulae.",
            "The historic Apollo missions that landed humans on the Moon, starting with Apollo 11 in 1969."
        ]
    ]
    
    // Current topic index
    var currentTopic = -1
    var currentImageIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Set initial view to the welcome screen
        resultImage.image = UIImage(named: "welcome")
        topicInfoText.text = "Hello, Sravya Geethika!!"
        
        // Disable navigation buttons initially
        ShowNextImageBtn.isEnabled = false
        ShowPrevImageBtn.isEnabled = false
    }
    
    @IBAction func searchButtonAction(_ sender: UIButton) {
        playSound(1113)
        if let searchText = searchTextField.text?.lowercased(), !searchText.isEmpty {
            // Check if the searchText matches any topic's keywords
            if famousLandmarks_keywords.contains(searchText) {
                currentTopic = 0
                currentImageIndex = 0
                showTopicImages()
            } else if wildlifeWonders_keywords.contains(searchText) {
                currentTopic = 1
                currentImageIndex = 0
                showTopicImages()
            } else if inventions_keywords.contains(searchText) {
                currentTopic = 2
                currentImageIndex = 0
                showTopicImages()
            } else if popularFestivals_keywords.contains(searchText) {
                currentTopic = 3
                currentImageIndex = 0
                showTopicImages()
            } else if spaceExploration_keywords.contains(searchText) {
                currentTopic = 4
                currentImageIndex = 0
                showTopicImages()
            } else {
                // No match found
                resultImage.image = UIImage(named: "search_not_found_image")
                topicInfoText.text = "No result found for \(searchText)"
            }
        }
    }
    
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        playSound(1105)
        if currentTopic != -1 {
            currentImageIndex += 1
            if currentImageIndex >= arr[currentTopic].count {
                currentImageIndex = 0 // loop back to the first image
            }
            showTopicImages()
        }
    }
    
    
    @IBAction func prevButtonTapped(_ sender: UIButton) {
        playSound(1105)
        if currentTopic != -1 {
            currentImageIndex -= 1
            if currentImageIndex < 0 {
                currentImageIndex = arr[currentTopic].count - 1 // loop back to the last image
            }
            showTopicImages()
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        playSound(1111)
        searchTextField.text = ""
        topicInfoText.text = "Hello, Sravya Geethika!!"
        resultImage.image = UIImage(named: "welcome")
        ShowNextImageBtn.isEnabled = false
        ShowPrevImageBtn.isEnabled = false
    }
    func showTopicImages() {
        if currentTopic != -1 {
            // Set the image based on currentTopic and currentImageIndex
            resultImage.image = UIImage(named: arr[currentTopic][currentImageIndex])
            topicInfoText.text = topics_description[currentTopic][currentImageIndex]
            
            // Enable buttons based on the current image index
            if currentImageIndex == 0 {
                ShowPrevImageBtn.isEnabled = false
            } else {
                ShowPrevImageBtn.isEnabled = true
            }
            
            if currentImageIndex == arr[currentTopic].count - 1 {
                ShowNextImageBtn.isEnabled = false
            } else {
                ShowNextImageBtn.isEnabled = true
            }
        }
    }
    func playSound(_ soundID: SystemSoundID) {
        AudioServicesPlaySystemSound(soundID)
    }
}

