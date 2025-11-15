//
//  MMopChokenCell.swift
//  MissdMgpoo
//
//  Created by MissdMgpoo on 2025/5/20.
//

import UIKit

class MMopChokenCell: UITableViewCell {

    @IBOutlet weak var flairView: UIImageView!
    
    @IBOutlet weak var beatsLabel: UILabel!
    
    @IBOutlet weak var identityLabel: UILabel!
    
    @IBOutlet weak var grayIfobackgrow: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        flairView.maskeLayers(radiud: 20)
        grayIfobackgrow.maskeLayers(radiud: 15)
    }

}


extension UIView{
    func maskeLayers(radiud:CGFloat) {
        self.layer.cornerRadius = radiud
        self.layer.masksToBounds = true
    }
}
