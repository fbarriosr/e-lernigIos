//
//  pdfViewController.swift
//  videoTube
//
//  Created by Francisco Barrios Romo on 29-03-18.
//  Copyright © 2018 RentalApps. All rights reserved.
//

import UIKit
import WebKit

class pdfViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string:
            "https://s3-sa-east-1.amazonaws.com/patoradio/AFICHE-ECMO-CLC-2018-ilovepdf-compressed.pdf")
        let request = URLRequest(url: url!)
            webView.loadRequest(request)
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
