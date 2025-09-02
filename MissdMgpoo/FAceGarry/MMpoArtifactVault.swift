//
//  MMpoArtifactVault.swift
//  MissdMgpoo
//
//  Created by MissdMgpoo on 2025/5/23.
//

import UIKit

 class MMPoArtifactVault: UIView {
    
    // MARK: 艺术材料属性
    private let archivalQueue = DispatchQueue(label: "com.mipoo.MMPoarchival", qos: .userInitiated)
    private var canvasCollection: [CanvasSnapshot] = []
    private lazy var restorationFeedback = UINotificationFeedbackGenerator()
    
    weak var curatorDelegate: CreativeArchiveDelegate?
    
   
    
    func restoreLatestSnapshot() {
        guard let last = canvasCollection.first else {
            curatorDelegate?.vaultFailedWithError(.restorationFailed)
            return
        }
        curatorDelegate?.vaultDidLoadHistoricalItems([last])
    }
    
    
    private func generateColorSignature(from image: UIImage) -> String {
        // 简化的色彩特征生成
        guard let cgImage = image.cgImage else { return "INV" }
        let width = cgImage.width
        let height = cgImage.height
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let bytesPerPixel = 4
        let bytesPerRow = bytesPerPixel * width
        let bitsPerComponent = 8
        
        var pixelData = [UInt8](repeating: 0, count: width * height * bytesPerPixel)
        
        guard let context = CGContext(
            data: &pixelData,
            width: width,
            height: height,
            bitsPerComponent: bitsPerComponent,
            bytesPerRow: bytesPerRow,
            space: colorSpace,
            bitmapInfo: CGImageAlphaInfo.premultipliedLast.rawValue
        ) else { return "ERR" }
        
        context.draw(cgImage, in: CGRect(x: 0, y: 0, width: width, height: height))
        
        let redAvg = pixelData.enumerated()
            .filter { $0.offset % 4 == 0 }
            .map { Float($0.element) }
            .reduce(0, +) / Float(width * height)
        
        let greenAvg = pixelData.enumerated()
            .filter { $0.offset % 4 == 1 }
            .map { Float($0.element) }
            .reduce(0, +) / Float(width * height)
        
        return "\(Int(redAvg))X\(Int(greenAvg))"
    }
    

    
   
}
