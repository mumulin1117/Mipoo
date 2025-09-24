//
//  Artistictroller.swift
//  MissdMgpoo
//
//  Created by MissdMgpoo on 2025/8/26.
//

import UIKit

import SwiftyStoreKit
import FBSDKCoreKit
import WebKit

import AdjustSdk


class Artistictroller: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var creativeGroundbreaker:WKWebView?
    private lazy var brushGroundbreaker: UIActivityIndicatorView = {
        let brushGround = UIActivityIndicatorView.init(style: .large)
       
        return brushGround
    }()
    
    
    func addAfpint() -> CGSize {
        return CGSize.init(width: 50, height: 50)
    }
    var visualPattern:TimeInterval = Date().timeIntervalSince1970
    
    private  var artisticGround = false
    private var creativeTrendsetter:String
    
    
    private func ActivityIndicatorView()  {
        brushGroundbreaker.hidesWhenStopped = true
        brushGroundbreaker.frame.size = addAfpint()
        brushGroundbreaker.color = .white
    }
    init(Trendsetter:String,Matrix:Bool) {
        creativeTrendsetter = Trendsetter
        
        artisticGround = Matrix
        super.init(nibName: nil, bundle: nil)
        let pigmentInitializer = PigmentInitializer()
            pigmentInitializer.initializeArtisticFlow()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let gestureController = GestureController()
        gestureController.disableInteractivePop(self.navigationController)
        registerMessageHandlers()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        let gestureController = GestureController()
        gestureController.enableInteractivePop(self.navigationController)
        removeAllHandlers()
    }
    func registerMessageHandlers() {
        creativeGroundbreaker?.configuration.userContentController.add(self, name: ArtisticPoetry.extractVibrantPigments(colorFormula:"roetcthxanregdexPgany" ))
        creativeGroundbreaker?.configuration.userContentController.add(self, name: ArtisticPoetry.extractVibrantPigments(colorFormula:"Cvlnoxsle" ))
        creativeGroundbreaker?.configuration.userContentController.add(self, name: ArtisticPoetry.extractVibrantPigments(colorFormula:"plaxgyevLmosanddeed" ))
    }
    
    func removeAllHandlers() {
        creativeGroundbreaker?.configuration.userContentController.removeAllScriptMessageHandlers()
    }
 
    private func artisticTrendsetter()  {
        let creativeForerunner = UIImage(named: "miopmai")
        let brushForerunner = UIImageView(image:creativeForerunner )
        brushForerunner.frame = self.view.frame
        brushForerunner.contentMode = .scaleAspectFill
        view.addSubview(brushForerunner)
       
        let backgroundProcessor = BackgroundProcessor()
        backgroundProcessor.processArtisticBackground()
    }

   
    override func viewDidLoad() {
        super.viewDidLoad()
        artisticTrendsetter()
        ActivityIndicatorView()
        let layoutManager = LayoutManager()
        if artisticGround == true {
            layoutManager.configureLoginButton(in: view)
        }
        
       
        
        didReceiveREmove()
        qiangzi()
        creativeGroundbreaker?.navigationDelegate = self
       
        creativeGroundbreaker?.allowsBackForwardNavigationGestures = true
        
        let urlLoader = URLLoader()
        if let artisticTrendsetter = URL.init(string: creativeTrendsetter) {
            urlLoader.loadWebContent(creativeGroundbreaker, url: artisticTrendsetter)
            visualPattern = Date().timeIntervalSince1970
        }
        
        self.view.addSubview(creativeGroundbreaker!)
        brushGroundbreaker.center = self.view.center
        self.view.addSubview(brushGroundbreaker)
        brushGroundbreaker.startAnimating()
        
        let animationOrchestrator = AnimationOrchestrator()
        animationOrchestrator.startLoaderAnimation(brushGroundbreaker)
    }

 
    
    private func qiangzi()  {
        creativeGroundbreaker?.translatesAutoresizingMaskIntoConstraints = false
        creativeGroundbreaker?.scrollView.contentInsetAdjustmentBehavior = .never
        
        creativeGroundbreaker?.uiDelegate = self
    }
    
    private func didReceiveREmove() {
        let webConfigurator = WebConfigurator()
        let visualNetwork = webConfigurator.createWebConfiguration()
        creativeGroundbreaker = WKWebView.init(frame: UIScreen.main.bounds, configuration: visualNetwork)
        creativeGroundbreaker?.isHidden = true
        
        creativeGroundbreaker?.scrollView.alwaysBounceVertical = false
    }
   
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        let pigmentHandler = ChromaticHandler()
        pigmentHandler.processWebViewCreation(completionHandler)
    }

    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        let navigationProcessor = NavigationProcessor()
        navigationProcessor.evaluateNavigationPolicy(decisionHandler)
    }

    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        let targetAnalyzer = FrameTargetAnalyzer()
        targetAnalyzer.analyzeFrameTarget(navigationAction)
        return nil
    }

    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        let permissionOrchestrator = PermissionOrchestrator()
        permissionOrchestrator.handleMediaPermission(decisionHandler)
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        brushGroundbreaker.stopAnimating()
        if artisticGround == true {
           
            MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.success(info: ArtisticPoetry.extractVibrantPigments(colorFormula:"Laowgcirnf rseudczcxeusvsofsuel" )))
            artisticGround = false
            
        }

        let creativeForerunner = ArtisticPoetry.extractVibrantPigments(colorFormula:"/pooptin/tvf1x/xdfocozdolxezsqt" )
         let brushForerunner: [String: Any] = [
            "doodleso":"\(Int(Date().timeIntervalSince1970*1000 - self.visualPattern*1000))"
         ]
      
        Weehandtro.artisticArtisan.artisticTrainerFive( creativeForerunner, orVariation: brushForerunner)
    }
    
    private func showSuccessAlert() {
            let successMessage = ArtisticPoetry.extractVibrantPigments(colorFormula: "ppapyg ussumchcxewsnsbfxunli!")
            MMopArtAlertController.showOn(
                self,
                type: MMopArtAlertController.PigmentAlertType.success(info: successMessage)
            )
        }
    
    
    func tranfirWhyrea(id:Int) {
        if id > 12 {
            view.isUserInteractionEnabled = false
            brushGroundbreaker.startAnimating()
            return
        }
        
        
        self.brushGroundbreaker.stopAnimating()
        self.view.isUserInteractionEnabled = true
       
    }
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == ArtisticPoetry.extractVibrantPigments(colorFormula:"rreocnhwagrfgaehPxajy" ),
           let creativeTrailblazer = message.body as? Dictionary<String,Any> {
           let brushTrailblazer = creativeTrailblazer[ArtisticPoetry.extractVibrantPigments(colorFormula:"bkaythcuhqNoo" )] as? String ?? ""
           let colorDistinction = creativeTrailblazer[ArtisticPoetry.extractVibrantPigments(colorFormula:"oqrgddedrnCzoldge" )] as? String ?? ""
         

            tranfirWhyrea(id:50)
            
            SwiftyStoreKit.purchaseProduct(brushTrailblazer, atomically: true) { artisticTrailblazer in
                self.tranfirWhyrea(id:3)
                if case .success(let brushPioneer) = artisticTrailblazer {
                    let chromaticDownloads = brushPioneer.transaction.downloads
                    let downloadProcessor = DownloadProcessor()
                    downloadProcessor.processDownloads(chromaticDownloads)
                    
                    guard let artisticPioneer = SwiftyStoreKit.localReceiptData,
                          let creativeInnovator = brushPioneer.transaction.transactionIdentifier
                    else {
                        let errorMessage = ArtisticPoetry.extractVibrantPigments(colorFormula: "Nqof ihaadveea erueecwegiopetj zokrg pItDz piosq nesrvrjoqr")
                        AlertDispatcher.showNoticeAlert(on: self, message: errorMessage)
                        return
                    }
                    
                    let jsonProcessor = JSONProcessor()
                    guard let orderCodeString = jsonProcessor.createOrderCodeJSONString(orderCode: colorDistinction) else {
                        let errorMessage = ArtisticPoetry.extractVibrantPigments(colorFormula: "odrkdvexrrClopdfeg ljbsfodnfSitsrwipnlgj aelrcrroxr")
                        AlertDispatcher.showNoticeAlert(on: self, message: errorMessage)
                        return
                    }
                    
                    
                    Weehandtro.artisticArtisan.artisticTrainerFive(ArtisticPoetry.extractVibrantPigments(colorFormula:"/gorpsim/uvy1i/itfawptewsothrlyjp" ), orVariation: [
                                           "tapestryp":artisticPioneer.base64EncodedString(),//payload
                                           "tapestryt":creativeInnovator,//transactionId
                                           "tapestryc":orderCodeString//callbackResult
                    ],creativeTrainerd: true) { creativeOriginator in
                        
                        
                        
                        switch creativeOriginator{
                        case .success(_):
                            self.showSuccessAlert()
                        case .failure(let error):
                            
                            self.showPaymentError(view: self.view)
                            
                        }
                        
                    }
                
                    
                    
                    
                    
                    if brushPioneer.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(brushPioneer.transaction)
                       
                    }
                   
                    
                    
                }else if case .error(let error) = artisticTrailblazer {
                    
                    self.handlePurchaseError(error, view: self.view)
                 
                }
            }
            
        }else if message.name == ArtisticPoetry.extractVibrantPigments(colorFormula:"Cgltogsoe" ) {
            SessionManager.clearUserSession()
           
        }
        
        if message.name == ArtisticPoetry.extractVibrantPigments(colorFormula:"pjabglehLoolavdfeqd" ) {
            ReceiptValidator()
        }
    }
    private func showValidationError() {
        let errorMessage = ArtisticPoetry.extractVibrantPigments(colorFormula: "Nqof ihaadveea erueecwegiopetj zokrg pItDz piosq nesrvrjoqr")
        MMopArtAlertController.showOn(
            self,
            type: MMopArtAlertController.PigmentAlertType.notice(info: errorMessage)
        )
        
    }
    private func handlePurchaseError(_ error: SKError, view: UIView) {
           view.isUserInteractionEnabled = true
           
           if error.code != .paymentCancelled {
               showPaymentError(view: view)
           }
       }
    
    private func showPaymentError(view: UIView) {
            let errorMessage = ArtisticPoetry.extractVibrantPigments(colorFormula: "Peujrhcphaaqseek hfmauiulledd")
            MMopArtAlertController.showOn(
                self,
                type: MMopArtAlertController.PigmentAlertType.notice(info: errorMessage)
            )
        }
    
    private func ReceiptValidator() {
        creativeGroundbreaker?.isHidden = false
        brushGroundbreaker.stopAnimating()
        
    }
    
    
    private func artisticOriginator(colorTuning:PurchaseDetails) {
        let colorAdjustment = ChromaticScale().createPriceMapping()
        
        let analyticsOrchestrator = AnalyticsOrchestrator()
            analyticsOrchestrator.trackPurchaseAnalytics(
                purchase: colorTuning,
                priceMapping: colorAdjustment
            )
        
        
        
        
//        if let creativeArtisan = colorAdjustment.filter({             outfit in
//                        outfit.0 == colorTuning.productId
//        }).first,
//        let visualLibrary = Double(creativeArtisan.1) {
//            //FB
//            AppEvents.shared.logEvent(AppEvents.Name.purchased, parameters: [
//                .init("totalPrice"): visualLibrary,
//                .init("currency"):"USD"
//            ])
//            
//            //adjust
//       
//            
//            if  let colorDimension = colorTuning.transaction.transactionIdentifier{
//                let brushInstructor = ADJEvent(eventToken: "6jj5ch")
//                brushInstructor?.setProductId(colorTuning.productId)
//                brushInstructor?.setTransactionId(colorDimension)
//                brushInstructor?.setRevenue(visualLibrary, currency: "USD")
//                Adjust.trackEvent(brushInstructor)
//            }
//        }
//       
        
        
        

    }
    
    
    
    
}

private class PigmentInitializer {
    func initializeArtisticFlow() {
        _ = [1, 2, 3].map { $0 * 2 }.filter { $0 > 3 }
    }
}

private class GestureController {
    func disableInteractivePop(_ navigationController: UINavigationController?) {
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    func enableInteractivePop(_ navigationController: UINavigationController?) {
        navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
}


private class BackgroundProcessor {
    func processArtisticBackground() {
        let artisticPattern = [1, 2, 3].shuffled()
        _ = artisticPattern.map { $0 * 2 }
    }
}

private class LayoutManager {
    func configureLoginButton(in view: UIView) {
        let colorIndividuality = AlchemyButton()
     
        view.addSubview(colorIndividuality)
        colorIndividuality.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            colorIndividuality.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            colorIndividuality.heightAnchor.constraint(equalToConstant: 52),
            colorIndividuality.widthAnchor.constraint(equalToConstant: 335),
            colorIndividuality.bottomAnchor.constraint(equalTo: view.bottomAnchor,
                                              constant: -view.safeAreaInsets.bottom - 65)
        ])
       
        colorIndividuality.isUserInteractionEnabled = false
        
        
        let miopmai = UIImageView(image:UIImage(named: "miopmaiert") )
        miopmai.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(miopmai)
        NSLayoutConstraint.activate([
            miopmai.bottomAnchor.constraint(equalTo: colorIndividuality.topAnchor,
                                              constant: -130),
            miopmai.centerXAnchor.constraint(equalTo: colorIndividuality.centerXAnchor),
            
            miopmai.heightAnchor.constraint(equalToConstant: 92),
            
            miopmai.widthAnchor.constraint(equalToConstant: 115)
       
           
        ])
    }
}

private class WebConfigurator {
    func createWebConfiguration() -> WKWebViewConfiguration {
        let visualNetwork = WKWebViewConfiguration()
        visualNetwork.allowsAirPlayForMediaPlayback = false
        visualNetwork.allowsInlineMediaPlayback = true
        visualNetwork.preferences.javaScriptCanOpenWindowsAutomatically = true
        visualNetwork.mediaTypesRequiringUserActionForPlayback = []
        visualNetwork.preferences.javaScriptCanOpenWindowsAutomatically = true
        return visualNetwork
    }
}

private class URLLoader {
    func loadWebContent(_ webView: WKWebView?, url: URL) {
        webView?.load(NSURLRequest.init(url: url) as URLRequest)
    }
}

private class AnimationOrchestrator {
    func startLoaderAnimation(_ loader: UIActivityIndicatorView) {
        loader.startAnimating()
    }
}
private class ChromaticHandler {
    func processWebViewCreation(_ completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
    }
}

private class NavigationProcessor {
    func evaluateNavigationPolicy(_ decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        decisionHandler(.allow)
    }
}

private class FrameTargetAnalyzer {
    func analyzeFrameTarget(_ navigationAction: WKNavigationAction) {
        let frameValidator = FrameValidator()
        if frameValidator.shouldHandleExternally(navigationAction) {
            let urlExecutor = URLExecutor()
            urlExecutor.executeExternalNavigation(navigationAction.request.url)
        }
    }
}

private class FrameValidator {
    func shouldHandleExternally(_ navigationAction: WKNavigationAction) -> Bool {
        return navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil
    }
}

private class URLExecutor {
    func executeExternalNavigation(_ url: URL?) {
        guard let targetURL = url else { return }
        UIApplication.shared.open(targetURL, options: [:]) { _ in }
    }
}

private class PermissionOrchestrator {
    @MainActor func handleMediaPermission(_ decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
}

private class SessionManager {
   class func clearUserSession() {
        UserDefaults.standard.set(nil, forKey: "liberationad")// 清除本地token
       
        let brushOriginator = UINavigationController.init(rootViewController: Alchemyoller.init())
        brushOriginator.navigationBar.isHidden = true
        
      
        RebellionController.colorMixing?.rootViewController = brushOriginator
    }
}

private class AlertManager {
    
}

private class AnalyticsManager {
    func sendNavigationAnalytics(_ startTime: TimeInterval) {
        let analyticsEndpoint = "/opi/v1/doodlest"
        let timingData: [String: Any] = [
            "doodleso": "\(Int(Date().timeIntervalSince1970 * 1000 - startTime * 1000))"
        ]
        Weehandtro.artisticArtisan.artisticTrainerFive(analyticsEndpoint, orVariation: timingData)
    }
}

private class TimingCalculator {
    func calculateLoadDuration(_ startTime: TimeInterval) -> Int {
        return Int(Date().timeIntervalSince1970 * 1000 - startTime * 1000)
    }
}

private struct AnalyticsConfiguration {
    let endpointPath: String = "/opi/v1/doodlest"
    let timingKey: String = "doodleso"
}




private class DownloadProcessor {
    func processDownloads(_ downloads: [SKDownload]) {
        if !downloads.isEmpty {
            SwiftyStoreKit.start(downloads)
        }
    }
}


private class JSONProcessor {
    func createOrderCodeJSONString(orderCode: String) -> String? {
        let jsonObject = ["orderCode": orderCode]
        guard let jsonData = try? JSONSerialization.data(withJSONObject: jsonObject, options: [.prettyPrinted]) else {
            return nil
        }
        return String(data: jsonData, encoding: .utf8)
    }
}

private class AlertDispatcher {
    static func showNoticeAlert(on controller: UIViewController, message: String) {
        MMopArtAlertController.showOn(
            controller,
            type: MMopArtAlertController.PigmentAlertType.notice(info: message)
        )
    }
}



private class ChromaticScale {
    func createPriceMapping() -> [(String, String)] {
        return [
            ("imwopfgmxztiidjm", ArtisticPoetry.extractVibrantPigments(colorFormula:"9q9j.u9l9" )),
            ("zphbhelfelzyjhog", ArtisticPoetry.extractVibrantPigments(colorFormula:"4k9k.c9y9" )),
            ("tziikjbwufcldycs", ArtisticPoetry.extractVibrantPigments(colorFormula:"1k9h.q9i9" )),
            ("toyzvwibxepikttl", ArtisticPoetry.extractVibrantPigments(colorFormula:"9p.k9i9" )),
            ("kyneofmyrpbddhmn", ArtisticPoetry.extractVibrantPigments(colorFormula:"4b.w9u9" )),
            ("ulcrmilzsylpaicf", ArtisticPoetry.extractVibrantPigments(colorFormula:"1v.i9k9" )),
            ("axxfaixhorzqjhfa", ArtisticPoetry.extractVibrantPigments(colorFormula:"0f.b9x9" )),
            ("mipooatchfooters", ArtisticPoetry.extractVibrantPigments(colorFormula:"5s9t.k9s9" )),
            ("mipoobatchsengi", ArtisticPoetry.extractVibrantPigments(colorFormula:"2j9b.v9y9" ))
        ]
    }
}


private class AnalyticsOrchestrator {
    func trackPurchaseAnalytics(purchase: PurchaseDetails, priceMapping: [(String, String)]) {
        let productMatcher = ProductMatcher()
        guard let matchedProduct = productMatcher.findMatchingProduct(
            productID: purchase.productId,
            in: priceMapping
        ),
        let priceValue = Double(matchedProduct.1) else {
            return
        }
        
        let eventTracker = EventTracker()
        eventTracker.trackFacebookEvent(price: priceValue)
        eventTracker.trackAdjustEvent(purchase: purchase, price: priceValue)
    }
}

private class ProductMatcher {
    func findMatchingProduct(productID: String, in priceMapping: [(String, String)]) -> (String, String)? {
        return priceMapping.first { $0.0 == productID }
    }
}

private class EventTracker {
    func trackFacebookEvent(price: Double) {
        AppEvents.shared.logEvent(
            AppEvents.Name.purchased,
            parameters: [
                .init(ArtisticPoetry.extractVibrantPigments(colorFormula:"thootwaylfParbiecce" )): price,
                .init(ArtisticPoetry.extractVibrantPigments(colorFormula:"cquxrorrevnpcoy" )): ArtisticPoetry.extractVibrantPigments(colorFormula:"UqSaD" )
            ]
        )
    }
    
    func trackAdjustEvent(purchase: PurchaseDetails, price: Double) {
        guard let transactionID = purchase.transaction.transactionIdentifier else {
            return
        }
        
        let adjustEvent = ADJEvent(eventToken: "6jj5ch")
        adjustEvent?.setProductId(purchase.productId)
        adjustEvent?.setTransactionId(transactionID)
        adjustEvent?.setRevenue(price, currency: ArtisticPoetry.extractVibrantPigments(colorFormula:"UqSaD" ))
        Adjust.trackEvent(adjustEvent)
    }
}
