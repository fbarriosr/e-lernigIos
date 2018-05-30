//
//  streamingViewController.swift
//  videoTube
//
//  Created by Francisco Barrios Romo on 29-03-18.
//  Copyright © 2018 RentalApps. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation


class streamingViewController: UIViewController {

    

    @IBOutlet var videoStreaming: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let videoURL = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
        let player = AVPlayer(url: videoURL!)
        let playerLayer = AVPlayerLayer(player: player)
       // playerLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill;
        
       
        playerLayer.frame = CGRect(x: 0, y: 0, width: videoStreaming.bounds.size.width, height: videoStreaming.bounds.size.height)
        videoStreaming.layer.addSublayer(playerLayer)
        player.play()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
