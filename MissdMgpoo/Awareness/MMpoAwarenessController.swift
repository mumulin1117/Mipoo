//
//  MMpoAwarenessController.swift
//  MissdMgpoo
//
//  Created by mumu on 2025/5/22.
//

import UIKit
import WebKit
import SwiftyStoreKit
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
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        easelActivityIndicator.startAnimating()
       
//        let FuelFlow = WKUserContentController()
        
        [
               "triggerCreativeFuelFlow", "handleArtistryBoostConfirmation", "launchCanvasPortalView",
                 "unlockArtistGatewaySession","dismissCanvasOverlay","terminatePaletteSession"
           
        ].forEach { handler in
            aestheticsView.configuration.userContentController.add(self, name: handler)
        }
       
        
        
        
     
        
        // 某些属性可能仍然可修改
        aestheticsView.configuration.allowsInlineMediaPlayback = true
        aestheticsView.configuration.mediaTypesRequiringUserActionForPlayback = []

        aestheticsView.configuration.preferences.javaScriptCanOpenWindowsAutomatically = true
        
        aestheticsView?.scrollView.contentInsetAdjustmentBehavior = .never
        aestheticsView?.navigationDelegate = self
        aestheticsView?.scrollView.bounces = false
        aestheticsView?.uiDelegate = self
       
        artisticFantasies()
        
    }

    func artisticFantasies() {
        if  let url = URL(string: dreams ) {
            aestheticsView.load(URLRequest(url: url))
        }
    }

    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        if message.name == "triggerCreativeFuelFlow" {
            guard let trigger = message.body  as? String else {
                return
            }
          
            self.easelActivityIndicator.startAnimating()
            self.view.isUserInteractionEnabled = false
            SwiftyStoreKit.purchaseProduct(trigger, atomically: true) { psResult in
                self.easelActivityIndicator.stopAnimating()
                
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.success(info: "pay successful!"))
                    self.aestheticsView?.evaluateJavaScript("handleArtistryBoostConfirmation()", completionHandler: nil)
                }else if case .error(let error) = psResult {
                    if error.code == .paymentCancelled {
                       
                        return
                    }
                    MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: error.localizedDescription))
                }
               
            }
        }
        
       
        
        if message.name == "launchCanvasPortalView" {
            if let trigger =  message.body as? String{
                let pushController = MMpoAwarenessController.init(dreams: trigger)
                
                self.navigationController?.pushViewController(pushController, animated: true)
                
               
            }
    
        }
       
           
        if message.name == "dismissCanvasOverlay" {
            self.navigationController?.popViewController(animated: true)
          
        }
        
        if message.name == "terminatePaletteSession" {
            
            RebellionController.clearUserSession()
            
            let dreamsController = UINavigationController.init(rootViewController:  MMopoetryController.init())
            dreamsController.navigationBar.isHidden = true
            
            
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = dreamsController
            
         
        }
        
  
       
    }
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: DispatchWorkItem(block: {
            self.aestheticsView.isHidden = false
            self.easelActivityIndicator.stopAnimating()
        }))
        
    }
    
}



