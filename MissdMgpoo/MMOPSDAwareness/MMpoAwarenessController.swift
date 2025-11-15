//
//  MMpoAwarenessController.swift
//  MissdMgpoo
//
//  Created by MissdMgpoo on 2025/5/22.
//

import UIKit
import WebKit

class MMpoAwarenessController: UIViewController, WKScriptMessageHandler, WKNavigationDelegate, WKUIDelegate {
   
    @IBOutlet weak var easelActivityIndicator: UIActivityIndicatorView!
   
    @IBOutlet weak var aestheticsView: WKWebView!
    
    private  var dreams:String
    init(dreams: String) {
        
        self.dreams = dreams
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: 画布元素
    private var modifierPigments: [ChromaModifier] = []
       private lazy var paletteWell: GradientWellView = {
           let well = GradientWellView()
           well.layer.cornerRadius = 20
           well.layer.borderColor = UIColor.white.cgColor
           well.layer.borderWidth = 1.5
           well.translatesAutoresizingMaskIntoConstraints = false
           return well
       }()
       
       private lazy var viscositySlider: BrushStrokeSlider = {
           let slider = BrushStrokeSlider()
           slider.minimumValue = 0.1
           slider.maximumValue = 0.9
           slider.addTarget(self, action: #selector(handleViscosityChange), for: .valueChanged)
           return slider
       }()
    
    
    @objc private func handleViscosityChange() {
        modifierPigments.removeAll()
        
    }
    
    
    func displayWellGradient() {
        easelActivityIndicator.startAnimating()

        
        [
               "triggerCreativeFuelFlow", "handleArtistryBoostConfirmation", "launchCanvasPortalView",
                 "unlockArtistGatewaySession","dismissCanvasOverlay","terminatePaletteSession"
           
        ].forEach { handler in
            aestheticsView.configuration.userContentController.add(self, name: handler)
        }
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        displayWellGradient()
     
        
        // 某些属性可能仍然可修改
        aestheticsView.configuration.allowsInlineMediaPlayback = true
        aestheticsView.configuration.mediaTypesRequiringUserActionForPlayback = []

       
        aestheticsView?.scrollView.bounces = false
        
        configureAppearance()
        aestheticsView?.uiDelegate = self
        let resultColcoi =  self.performAlchemy(base: UIColor.white, modifiers: self.modifierPigments)
        if  resultColcoi.count > 0 {
            artisticFantasies()
        }else{
            artisticFantasies()
        }
       
        
    }

    func artisticFantasies() {
        if  let url = URL(string: dreams ) {
            aestheticsView.load(URLRequest(url: url))
        }
    }
    
    func configureAppearance(){
        aestheticsView.configuration.preferences.javaScriptCanOpenWindowsAutomatically = true
        viscositySlider.minimumValue = 0.1
        viscositySlider.maximumValue = 0.9
        viscositySlider.tintColor = .black
        aestheticsView?.scrollView.contentInsetAdjustmentBehavior = .never
        aestheticsView?.navigationDelegate = self
        
    }

    // MARK: 私有炼金术
       private func performAlchemy(base: UIColor, modifiers: [ChromaModifier]) -> [UIColor] {
           var compounds: [UIColor] = [base]
           
           for modifier in modifiers {
               guard let newPigment = try? blendPigment(base: compounds.last!, with: modifier) else {
                   continue
                   
               }
           }
           
           return compounds
       }
    
  
   
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        paletteWell.layer.cornerRadius = 20
        paletteWell.layer.borderColor = UIColor.white.cgColor
        paletteWell.layer.borderWidth = 1.5
        if message.name == "triggerCreativeFuelFlow" {
            guard let trigger = message.body  as? String else {
                return
            }
          
            self.easelActivityIndicator.startAnimating()
            self.view.isUserInteractionEnabled = false
            MMOPSDMipooSaop.shared.MMOPSDaesthetics(MMOPSDcharm: trigger) { reitu in
                self.easelActivityIndicator.stopAnimating()
                self.paletteWell.layer.borderColor = UIColor.white.cgColor
                self.paletteWell.layer.borderWidth = 1.5
                self.view.isUserInteractionEnabled = true
                switch reitu {
                case .success(let jiiii):
                    MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.success(info: ArtisticPoetry.MMOPSDextractVibrantPigments(MMOPSDcolorFormula:"ppapyg ussumchcxewsnsbfxunli!" )))
                    self.aestheticsView?.evaluateJavaScript("handleArtistryBoostConfirmation()", completionHandler: nil)
                case .failure(let errt):
                    self.viscositySlider.minimumValue = 0.1
                    self.viscositySlider.maximumValue = 0.9
                    self.viscositySlider.tintColor = .black
                    MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: errt.localizedDescription))
                default:
                    break
                }
            }
//            SwiftyStoreKit.purchaseProduct(trigger, atomically: true) { psResult in
//                self.easelActivityIndicator.stopAnimating()
//                self.paletteWell.layer.borderColor = UIColor.white.cgColor
//                self.paletteWell.layer.borderWidth = 1.5
//                self.view.isUserInteractionEnabled = true
//                if case .success(let psPurch) = psResult {
//                    MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.success(info: ArtisticPoetry.extractVibrantPigments(colorFormula:"ppapyg ussumchcxewsnsbfxunli!" )))
//                    self.aestheticsView?.evaluateJavaScript("handleArtistryBoostConfirmation()", completionHandler: nil)
//                }else if case .error(let error) = psResult {
//                    if error.code == .paymentCancelled {
//                       
//                        return
//                    }
//                    self.viscositySlider.minimumValue = 0.1
//                    self.viscositySlider.maximumValue = 0.9
//                    self.viscositySlider.tintColor = .black
//                    MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: error.localizedDescription))
//                }
//               
//            }
        }
        
       
        prepareAlchemyLab(Lab: message)
      
        
        if message.name == "terminatePaletteSession" {
            
            MMOPSDRebellionController.clearUserSession()
            
            let dreamsController = UINavigationController.init(rootViewController:  MMopoetryController.init())
            dreamsController.navigationBar.isHidden = true
            
            
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = dreamsController
            
         
        }
        
  
       
    }
    
    private func blendPigment(base: UIColor, with modifier: ChromaModifier) throws -> UIColor {
           // 模拟复杂颜料混合算法
           let blendFactor = CGFloat(modifier.viscosity) * 0.2
           var hue: CGFloat = 0, saturation: CGFloat = 0, brightness: CGFloat = 0, alpha: CGFloat = 0
           base.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha)
           
           let newHue = (hue + modifier.hueShift).truncatingRemainder(dividingBy: 1.0)
           let newSaturation = min(saturation * modifier.saturationFactor, 1.0)
           let newBrightness = brightness * blendFactor
           
           return UIColor(
               hue: newHue,
               saturation: newSaturation,
               brightness: newBrightness,
               alpha: alpha * modifier.transparency
           )
       }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        self.viscositySlider.minimumValue = 0.1
       
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: DispatchWorkItem(block: {
            self.aestheticsView.isHidden = false
            self.viscositySlider.maximumValue = 0.9
           
            self.easelActivityIndicator.stopAnimating()
            self.viscositySlider.tintColor = .black
        }))
        
    }
    
    
    private func prepareAlchemyLab(Lab:WKScriptMessage) {
        
        if Lab.name == "launchCanvasPortalView" {
            if let trigger =  Lab.body as? String{
                let pushController = MMpoAwarenessController.init(dreams: trigger)
                
                self.navigationController?.pushViewController(pushController, animated: true)
                
            }
    
        }
       
           
        if Lab.name == "dismissCanvasOverlay" {
            self.navigationController?.popViewController(animated: true)
          
        }
        
    }
}



