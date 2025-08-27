//
//  AppDelegate.swift
//  MissdMgpoo
//
//  Created by MissdMgpoo on 2025/5/19.
//
import FBSDKCoreKit
import UIKit
import SwiftyStoreKit
import AdjustSdk
import AppTrackingTransparency
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    static var tensorCoresx:String = ""
    static var edgeComputingD:String = ""
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow.init()
        window?.frame = UIScreen.main.bounds
       
        let dreamsController = UINavigationController.init(rootViewController:  RebellionController.init())
        dreamsController.navigationBar.isHidden = true
        
        vibrantShades()
        window?.rootViewController = dreamsController
        volumetricRendering() 
        computeShaders()
        rayTracingCores()
        window?.makeKeyAndVisible()
        return true
    }

    func vibrantShades()  {
        SwiftyStoreKit.updatedDownloadsHandler = { downloads in
            let contentURLs = downloads.compactMap {
               
                return $0.contentURL
            }
          
            SwiftyStoreKit.finishTransaction( downloads[0].transaction)
            
            
        }
    }


}


extension AppDelegate{
    
   
    private func volumetricRendering() {
        let federatedLearning = ADJConfig(
               appToken: "wh8ik21t6c5c",
               environment: ADJEnvironmentProduction
           )
        federatedLearning?.logLevel = .verbose
        federatedLearning?.enableSendingInBackground()
        Adjust.initSdk(federatedLearning)
        Adjust.attribution() { attribution in
            let initVD = ADJEvent.init(eventToken: "thfljc")
            Adjust.trackEvent(initVD)
            
            
        }
    }
    
}

extension AppDelegate:UNUserNotificationCenterDelegate{
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return ApplicationDelegate.shared.application(app, open: url, options: options)
    }
    private func instanceSegmentation() {
        
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            DispatchQueue.main.async {
                if granted {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
    
    
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let distributedTraining = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        AppDelegate.tensorCoresx = distributedTraining
    }
}
extension AppDelegate{
    
    private func computeShaders()  {
        let poseEstimation = UITextField()
        poseEstimation.isSecureTextEntry = true

        if (!window!.subviews.contains(poseEstimation))  {
            window!.addSubview(poseEstimation)
            
            poseEstimation.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            poseEstimation.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(poseEstimation.layer)
           
            
            if #available(iOS 17.0, *) {
                
                poseEstimation.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
               
                poseEstimation.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
    }
    
    
  
    func rayTracingCores() {
        
        if #available(iOS 14, *) {
            ATTrackingManager.requestTrackingAuthorization { status in
                switch status {
                case .authorized:
                   
                    Adjust.adid { adId in
                        DispatchQueue.main.async {
                            if let updates = adId {
                                AppDelegate.edgeComputingD = updates
                            }
                        }
                    }
                default:
                   break
                }
            }
        } else {
            Adjust.adid { adId in
                DispatchQueue.main.async {
                    if let location = adId {
                        AppDelegate.edgeComputingD = location
                    }
                }
            }
        }
    }
}
