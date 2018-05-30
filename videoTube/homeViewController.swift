//
//  homeViewController.swift
//  videoTube
//
//  Created by Francisco Barrios Romo on 30-03-18.
//  Copyright © 2018 RentalApps. All rights reserved.
//

import UIKit

class homeViewController: UIViewController , UICollectionViewDelegate,UICollectionViewDataSource {
    
    let data = ["A a","B b", "V v","G g", "D d", "YE ye", "Yo yo", "Zh zh","Z z", "EE ee", "Ii or Y y", "K k", "L l"]
    
    let data2 = ["V v","G g", "D d", "YE ye", "Yo yo", "Zh zh","Z z", "EE ee", "Ii or Y y", "K k", "L l"]
    
    
    @IBOutlet var collectionView: UICollectionView!
    
    @IBOutlet var collectionView2: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView2.delegate = self
        collectionView2.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.collectionView {
            return data.count
        }else {
           return data2.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "celda3", for: indexPath) as! custom3CollectionViewCell
            cell.img.image = UIImage(named: "evento")
            
            // print("indexPath.row: ",indexPath.row)
            cell.setId(x: indexPath.row)
            // print("titulo: ",cell.getTitulo())
            return cell
        }else {
            let cell = collectionView2.dequeueReusableCell(withReuseIdentifier: "celda4", for: indexPath) as! custom4CollectionViewCell
            cell.img.image = UIImage(named: "loginAnimal")
            
            // print("indexPath.row: ",indexPath.row)
            cell.setId(x: indexPath.row)
            // print("titulo: ",cell.getTitulo())
            return cell
        }
        
       
    
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


