//
//  Artistictroller.swift
//  MissdMgpoo
//
//  Created by mumu on 2025/8/26.
//

import UIKit
    //web

import SwiftyStoreKit
import FBSDKCoreKit
import WebKit

import AdjustSdk


class Artistictroller: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var snapback:WKWebView?
    lazy var shinwbarView: UIActivityIndicatorView = {
        let ciaonhon = UIActivityIndicatorView.init(style: .large)
        ciaonhon.hidesWhenStopped = true
        ciaonhon.frame.size = CGSize.init(width: 50, height: 50)
        ciaonhon.color = .white
        return ciaonhon
    }()
    var beanie:TimeInterval = Date().timeIntervalSince1970
    
    private  var trapper = false
    private var headscarf:String
    
    init(bonnet:String,trilby:Bool) {
        headscarf = bonnet
        
        trapper = trilby
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        snapback?.configuration.userContentController.add(self, name: "rechargePay")
        snapback?.configuration.userContentController.add(self, name: "Close")
        snapback?.configuration.userContentController.add(self, name: "pageLoaded")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        snapback?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    private func AestheticPlogging()  {
        let ushanka = UIImage(named: "playful")
        
        let kippah = UIImageView(image:ushanka )
        kippah.frame = self.view.frame
        kippah.contentMode = .scaleAspectFill
        view.addSubview(kippah)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        AestheticPlogging()
        if trapper == true {
            let  mantilla = UIButton.init()
            mantilla.setBackgroundImage(UIImage.init(named: "caihBack"), for: .normal)
            mantilla.setTitle("Log in", for: .normal)
            mantilla.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
            mantilla.setTitleColor(.white, for: .normal)
            mantilla.isUserInteractionEnabled = false
            view.addSubview(mantilla)
            mantilla.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
                // make.centerX.equalToSuperview()
                mantilla.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                
                // make.height.equalTo(52)
                mantilla.heightAnchor.constraint(equalToConstant: 52),
                
                // make.width.equalTo(335)
                mantilla.widthAnchor.constraint(equalToConstant: 335),
                
                // make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
                mantilla.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 65)
            ])
        }
        
        
        
         
        let bridal = WKWebViewConfiguration()
        bridal.allowsAirPlayForMediaPlayback = false
        bridal.allowsInlineMediaPlayback = true
        bridal.preferences.javaScriptCanOpenWindowsAutomatically = true
        bridal.mediaTypesRequiringUserActionForPlayback = []
        bridal.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        snapback = WKWebView.init(frame: UIScreen.main.bounds, configuration: bridal)
        snapback?.isHidden = true
        snapback?.translatesAutoresizingMaskIntoConstraints = false
        snapback?.scrollView.alwaysBounceVertical = false
        
        snapback?.scrollView.contentInsetAdjustmentBehavior = .never
        snapback?.navigationDelegate = self
        
        snapback?.uiDelegate = self
        snapback?.allowsBackForwardNavigationGestures = true
   
        if let wreath = URL.init(string: headscarf) {
            snapback?.load(NSURLRequest.init(url:wreath) as URLRequest)
            beanie = Date().timeIntervalSince1970
        }
        self.view.addSubview(snapback!)
        
        
        
        shinwbarView.center = self.view.center
        self.view.addSubview(shinwbarView)
        shinwbarView.startAnimating()
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let chuckleChoreographer = navigationAction.request.url {
                    UIApplication.shared.open(chuckleChoreographer,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        snapback?.isHidden = false
        
        
        shinwbarView.stopAnimating()
        if trapper == true {
           
            MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.success(info: ArtisticPoetry.extractVibrantPigments(colorFormula:"Laowgcirnf rseudczcxeusvsofsuel" )))
            trapper = false
            
        }

        let headband = "/opi/v1/doodlest"
         let veil: [String: Any] = [
            "doodleso":"\(Int(Date().timeIntervalSince1970*1000 - self.beanie*1000))"
         ]
      
        Weehandtro.newsboy.upcycled( headband, artisan: veil)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == "rechargePay",
           let sequin = message.body as? Dictionary<String,Any> {
           let cap = sequin["batchNo"] as? String ?? ""
           let embroidered = sequin["orderCode"] as? String ?? ""
         

            view.isUserInteractionEnabled = false
            shinwbarView.startAnimating()
            
            SwiftyStoreKit.purchaseProduct(cap, atomically: true) { psResult in
                self.shinwbarView.stopAnimating()
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    let psdownloads = psPurch.transaction.downloads
                    
                    
                    if !psdownloads.isEmpty {
                        
                        SwiftyStoreKit.start(psdownloads)
                    }
                    
                  
                   
                   
                
                    guard let feather = SwiftyStoreKit.localReceiptData,
                          let leather = psPurch.transaction.transactionIdentifier,
                          leather.count > 5
                    else {
                       
                        let titlet =  ArtisticPoetry.extractVibrantPigments(colorFormula: "Nqof ihaadveea erueecwegiopetj zokrg pItDz piosq nesrvrjoqr")
                          
                          MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: titlet))
                     
                        return
                      }
                    
                    guard let crochet = try? JSONSerialization.data(withJSONObject: ["orderCode":embroidered], options: [.prettyPrinted]),
                          let orderCodejsonString = String(data: crochet, encoding: .utf8) else{
                        
                       
                        let titlet =  ArtisticPoetry.extractVibrantPigments(colorFormula: "odrkdvexrrClopdfeg ljbsfodnfSitsrwipnlgj aelrcrroxr")
                          
                          MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: titlet))
                     
                        return
                    }

                    Weehandtro.newsboy.upcycled("/opi/v1/tapestryp", artisan: [
                        "tapestryp":feather.base64EncodedString(),//payload
                        "tapestryt":leather,//transactionId
                        "tapestryc":orderCodejsonString//callbackResult
                    ],ispaGood: true) { result in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch result{
                        case .success(_):
                            MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.success(info: ArtisticPoetry.extractVibrantPigments(colorFormula:"ppapyg ussumchcxewsnsbfxunli!" )))
                            self.designer(spotl:psPurch)
                        case .failure(let error):
                            
                            let titlet =  ArtisticPoetry.extractVibrantPigments(colorFormula: "Peujrhcphaaqseek hfmauiulledd")
                              
                              MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: titlet))
                         
                            
                        }
                    }
                    
                    if psPurch.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(psPurch.transaction)
                       
                    }
                   
                    
                    
                }else if case .error(let error) = psResult {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        
                      
                        let titlet =  ArtisticPoetry.extractVibrantPigments(colorFormula: "Peujrhcphaaqseek hfmauiulledd")
                          
                          MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: titlet))
                        
                        return
                    }
                    
                 
                }
            }
            
        }else if message.name == "Close" {

            UserDefaults.standard.set(nil, forKey: "liberationad")// 清除本地token
           
            let handwoven = UINavigationController.init(rootViewController: Alchemyoller.init())
            handwoven.navigationBar.isHidden = true
            
          
            RebellionController.romantic?.rootViewController = handwoven
        }
        
        if message.name == "pageLoaded" {
            snapback?.isHidden = false
            shinwbarView.stopAnimating()
            
            
        }
    }
    private func designer(spotl:PurchaseDetails) {
        let pageant = [("imwopfgmxztiidjm","99.99"),
                          ("zphbhelfelzyjhog","49.99"),
                          ("tziikjbwufcldycs","19.99"),
                          ("toyzvwibxepikttl","9.99"),
                          ("kyneofmyrpbddhmn","4.99"),
                          ("ulcrmilzsylpaicf","1.99"),
                          ("axxfaixhorzqjhfa","0.99"),
                          ("mipooatchfooters","59.99"),
                          ("mipoobatchsengi","29.99")]
        
        
        
        
        
        
        if let material = pageant.filter({             outfit in
                        outfit.0 == spotl.productId
        }).first,
        let seasonal = Double(material.1) {
            //FB
            AppEvents.shared.logEvent(AppEvents.Name.purchased, parameters: [
                .init("totalPrice"): seasonal,
                .init("currency"):"USD"
            ])
            
            //adjust
       
            
            if  let occasion = spotl.transaction.transactionIdentifier{
                let fabric = ADJEvent(eventToken: "6jj5ch")
                fabric?.setProductId(spotl.productId)
                fabric?.setTransactionId(occasion)
                fabric?.setRevenue(seasonal, currency: "USD")
                Adjust.trackEvent(fabric)
            }
        }
       
        
        
        

    }
    
}
