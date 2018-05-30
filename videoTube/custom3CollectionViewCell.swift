//
//  custom3CollectionViewCell.swift
//  videoTube
//
//  Created by Francisco Barrios Romo on 30-03-18.
//  Copyright © 2018 RentalApps. All rights reserved.
//

import UIKit

class custom3CollectionViewCell: UICollectionViewCell {
    
   
    @IBOutlet var img: UIImageView!
    
  
    
    var id = 0
    
    public func setId(x: Int){
        id = x;
    }
    
    public func getID() -> Int {
        return id
    }
    

    
    
}
