//
//  ViewController.swift
//  Sample
//
//  Created by Sravya Geethika Sala on 4/17/25.
//

import UIKit
import AVKit
class ViewController: UIViewController {


    @IBOutlet weak var videoBackgroundView: UIView!
    
    @IBOutlet weak var playPauseButton: UIButton!
    
    
    var player: AVPlayer?
        var playerLayer: AVPlayerLayer?
        var isVideoPlaying = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupVideoBackground()
    }
    
    func setupVideoBackground() {
            if let path = Bundle.main.path(forResource: "libApp", ofType: "mp4") {
                let url = URL(fileURLWithPath: path)
                player = AVPlayer(url: url)

                playerLayer = AVPlayerLayer(player: player)
                playerLayer?.frame = videoBackgroundView.bounds
                playerLayer?.videoGravity = .resizeAspectFill

                if let layer = playerLayer {
                    videoBackgroundView.layer.addSublayer(layer)
                }

                player?.play()
                isVideoPlaying = true

                // Loop the video
                NotificationCenter.default.addObserver(self,
                    selector: #selector(restartVideo),
                    name: .AVPlayerItemDidPlayToEndTime,
                    object: player?.currentItem)
            } else {
                print("❌ Video file 'libApp.mp4' not found.")
            }
        }
    
    @objc func restartVideo() {
           player?.seek(to: .zero)
           player?.play()
       }
    
    
    @IBAction func playPauseButtonTapped(_ sender: UIButton) {
        if isVideoPlaying {
                    player?.pause()
                    isVideoPlaying = false
                    sender.setTitle("Play", for: .normal)
        } else {
            player?.play()
            isVideoPlaying = true
            sender.setTitle("Pause", for: .normal)
        }
    }
}

