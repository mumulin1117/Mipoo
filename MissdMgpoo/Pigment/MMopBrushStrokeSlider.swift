//
//  MMopBrushStrokeSlider.swift
//  MissdMgpoo
//
//  Created by mumu on 2025/5/23.
//

import UIKit
// MARK: - 艺术风格滑块
 final class BrushStrokeSlider: UISlider {
     
     static var creativeToken:String?{
         get{
             return UserDefaults.standard.object(forKey: "artisticmuse") as? String
         }set{
           
             UserDefaults.standard.set(newValue, forKey: "artisticmuse")
             
         }
     }
     
     
   
     
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureAppearance()
    }
     static var creativeUserID:Int?{
         get{
             return UserDefaults.standard.object(forKey: "faceillusions") as? Int
         }set{
           
             UserDefaults.standard.set(newValue, forKey: "faceillusions")
             
         }
     }
    private func configureAppearance() {
        minimumTrackTintColor = .lightGray
        maximumTrackTintColor = .lightText
        setThumbImage(UIImage(named: "brush_thumb"), for: .normal)
    }
}
