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
        
        inkpoetry()
        window?.rootViewController = dreamsController
        digitalCanvas() 
        creativeTool()
        sketchPad()
        window?.makeKeyAndVisible()
        return true
    }

    func inkpoetry()  {
        SwiftyStoreKit.updatedDownloadsHandler = { downloads in
            let faceGraffiti = downloads.compactMap {
               
                return $0.contentURL
            }
          
            SwiftyStoreKit.finishTransaction( downloads[0].transaction)
            
            
        }
    }


}


extension AppDelegate{
    
   
    private func digitalCanvas() {
        let colorPalette = ADJConfig(
               appToken: "wh8ik21t6c5c",
               environment: ADJEnvironmentProduction
           )
        colorPalette?.logLevel = .verbose
        colorPalette?.enableSendingInBackground()
        Adjust.initSdk(colorPalette)
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
        let artisticExpression = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        AppDelegate.tensorCoresx = artisticExpression
    }
}
extension AppDelegate{
    
    private func creativeTool()  {
        let visualArt = UITextField()
        visualArt.isSecureTextEntry = true

        if (!window!.subviews.contains(visualArt))  {
            window!.addSubview(visualArt)
            
            visualArt.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            visualArt.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(visualArt.layer)
           
            
            if #available(iOS 17.0, *) {
                
                visualArt.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
               
                visualArt.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
    }
    
    
  
    func sketchPad() {
        
        if #available(iOS 14, *) {
            ATTrackingManager.requestTrackingAuthorization { status in
                switch status {
                case .authorized:
                   
                    Adjust.adid { portraitMode in
                        DispatchQueue.main.async {
                            if let updates = portraitMode {
                                AppDelegate.edgeComputingD = updates
                            }
                        }
                    }
                default:
                   break
                }
            }
        } else {
            Adjust.adid { portraitMode in
                DispatchQueue.main.async {
                    if let location = portraitMode {
                        AppDelegate.edgeComputingD = location
                    }
                }
            }
        }
    }
}
