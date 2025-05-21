//
//  MMpoShareingVireCell.swift
//  MissdMgpoo
//
//  Created by mumu on 2025/5/21.
//

import UIKit

class MMpoShareingVireCell: UICollectionViewCell {
    @IBOutlet weak var flairView: UIImageView!
    
    @IBOutlet weak var beatsLabel: UILabel!
    
 
    
    @IBOutlet weak var liberationLabel: UILabel!
    
    

    
    @IBOutlet weak var imaginativeBig: UIImageView!
    
    @IBOutlet weak var liberationINK: UIButton!
    
    
    @IBOutlet weak var Report: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        faceTapestry()
    }

    
    private func faceTapestry() {
     
        
       
        flairView.maskeLayers(radiud: 25)
        
       
    }
}
