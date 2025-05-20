//
//  MMopArtAlertController.swift
//  MissdMgpoo
//
//  Created by mumu on 2025/5/20.
//

import UIKit

class MMopArtAlertController: UIViewController {
    
    // MARK: - 画布元素
    private let canvasView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.backgroundColor = .blue
        return view
    }()
    
    private let pigmentLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    

    
    // MARK: - 颜料配置
    enum PigmentAlertType {
        case success(info: String)
        case error(info: String)
        case notice(info: String)
    }
    
    static func showOn(_ presenter: UIViewController,
                      type: PigmentAlertType,
                      duration: TimeInterval = 2.5) {
        let alert = MMopArtAlertController()
        alert.configureWith(type: type)
        alert.modalPresentationStyle = .overCurrentContext
        alert.modalTransitionStyle = .crossDissolve
        presenter.present(alert, animated: true)
        
        guard duration > 0 else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
            alert.dismissWithBrushStroke()
        }
    }
    private func dismissWithBrushStroke() {
           UIView.animate(withDuration: 0.3, animations: {
               self.canvasView.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
               self.view.alpha = 0
           }, completion: { _ in
               self.dismiss(animated: false)
           })
       }
    // MARK: - 画布生命周期
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareArtisticCanvas()
    }
    
    private func prepareArtisticCanvas() {
        view.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        
        canvasView.translatesAutoresizingMaskIntoConstraints = false
        pigmentLabel.translatesAutoresizingMaskIntoConstraints = false
        canvasView.frame = CGRect(x: 30, y:0, width: UIScreen.main.bounds.width - 30, height:100)
        canvasView.center = self.view.center
        view.addSubview(canvasView)
        
        
       
        pigmentLabel.frame = CGRect(x: 15, y:0, width: canvasView.frame.width - 30, height: 70)
        pigmentLabel.center = self.view.center
        view.addSubview(pigmentLabel)
    }
    
    // MARK: - 颜料动态效果
    func configureWith(type: PigmentAlertType) {
        switch type {
        case .success(let palette):
            configureSuccessCanvas(with: palette)
        case .error(let stroke):
            configureErrorStroke(with: stroke)
        case .notice(let canvas):
            configureNoticeCanvas(with: canvas)
        }
    }
    
    private func configureSuccessCanvas(with info:String) {
        
        pigmentLabel.textColor = .white
        pigmentLabel.text = info
        canvasView.backgroundColor = .green
         
        addConfettiBrush()
    }
    
    private func configureErrorStroke(with info:String) {
        canvasView.backgroundColor = .red
        pigmentLabel.textColor = .white
        pigmentLabel.text = info
        
        
         
        addVibrationEffect()
    }
    
    private func configureNoticeCanvas(with info:String) {
        canvasView.backgroundColor = UIColor(red: 1, green: 0.46, blue: 0.85, alpha: 1)
        pigmentLabel.textColor = .black
        pigmentLabel.text = info
      
        
    }
    
    // MARK: - 动态效果
    private func addConfettiBrush() {
        let emitter = CAEmitterLayer.brushConfetti()
        canvasView.layer.addSublayer(emitter)
    }
    
    private func addVibrationEffect() {
        let animation = CABasicAnimation.brushShake()
        canvasView.layer.add(animation, forKey: "shake")
    }
    
}





extension CAEmitterLayer {
    static func brushConfetti() -> CAEmitterLayer {
        let emitter = CAEmitterLayer()
        emitter.emitterShape = .line
        emitter.emitterCells = (0..<5).map { _ in
            let cell = CAEmitterCell()
//            cell.contents = UIImage.brushParticle(color: UIColor.orange).cgImage
            cell.birthRate = 3
            cell.lifetime = 5
            cell.velocity = 100
            cell.scale = 0.3
            return cell
        }
        return emitter
    }
}

// CABasicAnimation+BrushEffects.swift
extension CABasicAnimation {
    static func brushShake() -> CABasicAnimation {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 3
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: 0, y: 5))
        animation.toValue = NSValue(cgPoint: CGPoint(x: 0, y: -5))
        return animation
    }
}

