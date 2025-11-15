//
//  MMpoCommcute.swift
//  MissdMgpoo
//
//  Created by MissdMgpoo on 2025/5/21.
//

import UIKit

class MMpoCommcute: UICollectionViewCell {
    @IBOutlet weak var flairView: UIImageView!
    
    @IBOutlet weak var beatsLabel: UILabel!
    
    @IBOutlet weak var followements: UILabel!
    
    @IBOutlet weak var liberationLabel: UILabel!
    
    
    @IBOutlet weak var imaginative: UIImageView!
    
    @IBOutlet weak var imaginativeBig: UIImageView!
    
    @IBOutlet weak var liberationINK: UIButton!
    
    
    @IBOutlet weak var liberation: UIButton!
    
    @IBOutlet weak var Report: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        faceTapestry()
    }

    
    private func faceTapestry() {
        self.maskeLayers(radiud: 20)
        liberation.maskeLayers(radiud: 20)
        liberation.setTitle(ArtisticPoetry.MMOPSDextractVibrantPigments(MMOPSDcolorFormula:" a rsxamyk sssoimktnhuimnmg" ), for: .normal)
        liberationINK.maskeLayers(radiud: 20)
        flairView.maskeLayers(radiud: 25)
        
        imaginative.maskeLayers(radiud: 20)
        imaginativeBig.maskeLayers(radiud: 20)
    }
}
