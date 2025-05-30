//
//  MMopFaceUserCell.swift
//  MissdMgpoo
//
//  Created by MissdMgpoo on 2025/5/20.
//

import UIKit

class MMopFaceUserCell: UICollectionViewCell {
    @IBOutlet weak var flairView: UIImageView!
    
    @IBOutlet weak var beatsLabel: UILabel!
    
    @IBOutlet weak var followements: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        flairView.maskeLayers(radiud: 22)
        self.maskeLayers(radiud: 22)
    }
    

}
