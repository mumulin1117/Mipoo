//
//  MMopFaceShowrCell.swift
//  MissdMgpoo
//
//  Created by MissdMgpoo on 2025/5/20.
//

import UIKit

class MMopFaceShowrCell: UICollectionViewCell {

    @IBOutlet weak var beatsLabel: UILabel!
    
    @IBOutlet weak var statements: UIImageView!
    
    
    @IBOutlet weak var shongStage: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.maskeLayers(radiud: 16)
        statements.maskeLayers(radiud: 16)
        shongStage.maskeLayers(radiud: 16)
    }

}
