//
//  ChromaModifier.swift
//  MissdMgpoo
//
//  Created by MissdMgpoo on 2025/5/23.
//

import UIKit


struct ChromaModifier {
    let hueShift: CGFloat
    let saturationFactor: CGFloat
    var viscosity: Float
    let transparency: CGFloat
    
    init(hueShift: CGFloat = 0.1,
         saturation: CGFloat = 1.2,
         viscosity: Float = 0.5,
         transparency: CGFloat = 0.8) {
        self.hueShift = hueShift
        self.saturationFactor = saturation
        self.viscosity = viscosity
        self.transparency = transparency
    }
}
