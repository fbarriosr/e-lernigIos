//
//  EventosViewController.swift
//  videoTube
//
//  Created by Francisco Barrios Romo on 30-03-18.
//  Copyright © 2018 RentalApps. All rights reserved.
//

import UIKit

class EventosViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    
    let data = ["A a","B b", "V v","G g", "D d", "YE ye", "Yo yo", "Zh zh","Z z", "EE ee", "Ii or Y y", "K k", "L l"]
    
    @IBOutlet var collectionView: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "celda2", for: indexPath) as! custom2CollectionViewCell
    
        cell.img.image = UIImage(named: "cover2")
  
        
        // print("indexPath.row: ",indexPath.row)
        cell.setId(x: indexPath.row)
        // print("titulo: ",cell.getTitulo())
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    
        
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

