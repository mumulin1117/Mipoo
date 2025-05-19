//
//  AppDelegate.swift
//  MissdMgpoo
//
//  Created by mumu on 2025/5/19.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window?.frame = UIScreen.main.bounds
        
        let dreamsController = RebellionController.init()
        dreamsController.navigationController?.navigationBar.isHidden = true
        window?.rootViewController = UINavigationController.init(rootViewController: dreamsController)
        window?.makeKeyAndVisible()
        return true
    }

  


}


class RebellionController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(vibrationsImageView)
                NSLayoutConstraint.activate([
                    vibrationsImageView.topAnchor.constraint(equalTo: view.topAnchor),
                    vibrationsImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                    vibrationsImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                    vibrationsImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                
                ]
                )
        
        
        fantasiesLoginStatus()
        
        
        
    }
    
    private lazy var vibrationsImageView: UIImageView = {
            let iv = UIImageView()
            iv.contentMode = .scaleAspectFill
            iv.clipsToBounds = true
            iv.image = UIImage(named: "playful")
            iv.translatesAutoresizingMaskIntoConstraints = false
            return iv
       
    }()
        
    
    private func fantasiesLoginStatus() {
            // 检查本地用户信息（示例使用UserDefaults）
            let hasLoggedInUser = UserDefaults.standard.bool(forKey: "isMMPLoggedIn")
            
            // 延迟0.5秒保证启动页展示完整
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                if hasLoggedInUser {
                    self.pushToMainTabBarController()
                } else {
                    self.pickUpvisualDreams()
                }
            }
       
    }

    private func pushToMainTabBarController() {
         let mainTabBarVC = MMopMainController.init()
        
        // 添加转场动画
        UIView.transition(with: UIApplication.shared.windows.first!,
                          duration: 0.3,
                          options: .transitionCrossDissolve,
                          animations: {
            UIApplication.shared.windows.first?.rootViewController = mainTabBarVC
        },
                          completion: nil)
        
    }
    
    
    private func pickUpvisualDreams() {
       
        // 使用导航控制器包装
        let navController = UINavigationController(rootViewController: MMopoetryController.init())
        navController.isNavigationBarHidden = true
        
        UIView.transition(with: UIApplication.shared.windows.first!,
                          duration: 0.3,
                          options: .transitionFlipFromRight,
                          animations: {
            UIApplication.shared.windows.first?.rootViewController = navController
        },
                          completion: nil)
        
    }
    
  
    class  func setUserLoggedIn() {
        UserDefaults.standard.set(true, forKey: "isMMPLoggedIn")
        
    }


    class func clearUserSession() {
        UserDefaults.standard.set(false, forKey: "isMMPLoggedIn")
       
    }
}
