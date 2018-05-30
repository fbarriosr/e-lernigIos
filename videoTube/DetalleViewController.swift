//
//  DetalleViewController.swift
//  moofwd
//
//  Created by Francisco Barrios Romo on 05-11-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class DetalleViewController: UIViewController {

    var urlImage = ""
    var titleData = ""
    var authorData = ""

    
    @IBOutlet var cardTitle: UILabel!

    @IBOutlet var cardDetail: UILabel!
    
    @IBOutlet var imageTop: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    override func viewWillAppear(_ animated: Bool) {
   
        cardTitle.text = authorData
        cardDetail.text = titleData
        
        let url = URL(string: urlImage)
        let data = try? Data(contentsOf: url!) //make sure your image in this url does exist, otherwise unwrap in a if let check / try-catch
        imageTop.image = UIImage(data: data!)
    
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if segue.identifier == "video" {
            let destination = segue.destination as!
            AVPlayerViewController
            let url = URL(string:
                "https://s3-sa-east-1.amazonaws.com/patoradio/santamargarita/sta+margarita+0401_1.mp4")
            
            if let movieURL = url {
                destination.player = AVPlayer(url: movieURL)
        }
            
        }
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
