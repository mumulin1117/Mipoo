//
//  MMopGradientWellView.swift
//  MissdMgpoo
//
//  Created by MissdMgpoo on 2025/5/23.
//

import UIKit


 final class GradientWellView: UIView {
    private var gradientLayer: CAGradientLayer?
    
    func displayGradient(_ colors: [UIColor]) {
        gradientLayer?.removeFromSuperlayer()
        
        let gradient = CAGradientLayer()
        gradient.colors = colors.map { $0.cgColor }
        gradient.startPoint = CGPoint(x: 0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1, y: 0.5)
        gradient.frame = bounds
        gradient.cornerRadius = layer.cornerRadius
        layer.insertSublayer(gradient, at: 0)
        
        gradientLayer = gradient
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer?.frame = bounds
    }
}
