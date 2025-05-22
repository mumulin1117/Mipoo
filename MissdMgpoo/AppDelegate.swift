//
//  AppDelegate.swift
//  MissdMgpoo
//
//  Created by MissdMgpoo on 2025/5/19.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow.init()
        window?.frame = UIScreen.main.bounds
        
        let dreamsController = UINavigationController.init(rootViewController:  RebellionController.init())
        dreamsController.navigationBar.isHidden = true
        
      
        window?.rootViewController = dreamsController
        window?.makeKeyAndVisible()
        return true
    }

  


}


class RebellionController: UIViewController {
    static var creativeToken:String?{
        get{
            return UserDefaults.standard.object(forKey: "artisticmuse") as? String
        }set{
          
            UserDefaults.standard.set(newValue, forKey: "artisticmuse")
            
        }
    }
    
    
    static var creativeUserID:Int?{
        get{
            return UserDefaults.standard.object(forKey: "faceillusions") as? Int
        }set{
          
            UserDefaults.standard.set(newValue, forKey: "faceillusions")
            
        }
    }
    
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
         let mainTabBarVC = MMopArtMainTAbController.init()
        
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
        navController.navigationBar.isHidden = true
        
        UIView.transition(with: UIApplication.shared.windows.first!,
                          duration: 0.3,
                          options: .transitionFlipFromRight,
                          animations: {
            UIApplication.shared.windows.first?.rootViewController = navController
        },
                          completion: nil)
        
    }
    
  
    class  func setUserLoggedIn(creativeToken:String,creativeUserID:Int) {
        UserDefaults.standard.set(true, forKey: "isMMPLoggedIn")
        RebellionController.creativeToken = creativeToken
        RebellionController.creativeUserID = creativeUserID
    }


    class func clearUserSession() {
        UserDefaults.standard.set(false, forKey: "isMMPLoggedIn")
        RebellionController.creativeToken = nil
        RebellionController.creativeUserID = nil
    }
    
    
    
    // MARK: - 画布通信中枢
    class func canvasTransmissionChannel(boldtextures:UIColor,stylepoetry:Int,
        artisticCollective: String,
        pigmentComposition: [String: Any],
        masterpieceDelivery: ((Any?) -> Void)?,
        creativeMishap: ((Error) -> Void)?
    ) {
        // 1. 构建艺术画廊路径
        let spectralGallery = "http://www.fireflash678.xyz/backtwo" + artisticCollective
        
        // 2. 颜料安全验证
        guard let exhibitionHall = URL(string: spectralGallery) else {
            creativeMishap?(NSError(
                domain: "GalleryError",
                code: -1,
                userInfo: [NSLocalizedDescriptionKey: "Invalid exhibition path: \(spectralGallery)"]
            ))
            return
        }
        
        // 3. 准备艺术创作工具包
        var artistToolkit: [String: String] = [
            "Content-Type": "application/json",
            "Accept": "application/json"
        ]
        artistToolkit["key"] = "54684883"
        artistToolkit["token"] = RebellionController.creativeToken
        
        // 4. 配置画布载体
        var canvasCarrier = URLRequest(
            url: exhibitionHall,
            cachePolicy: .reloadIgnoringLocalCacheData,
            timeoutInterval: 30
        )
        canvasCarrier.httpMethod = "POST"
        artistToolkit.forEach { canvasCarrier.setValue($1, forHTTPHeaderField: $0) }
        
        // 5. 调制颜料配方
        do {
            canvasCarrier.httpBody = try JSONSerialization.data(
                withJSONObject: pigmentComposition,
                options: []
            )
        } catch {
            creativeMishap?(error)
            return
        }
        
        // 6. 开启艺术会话
        let creativeSession = URLSession(configuration: {
            let config = URLSessionConfiguration.ephemeral
            config.timeoutIntervalForRequest = 30
            config.timeoutIntervalForResource = 60
            return config
        }())
        
        // 7. 作品交付流程
        creativeSession.dataTask(with: canvasCarrier) {
            rawPigment, galleryResponse, artisticError in
            
            DispatchQueue.main.async {
                // 8. 创作事故处理
                if let artisticError = artisticError {
                    creativeMishap?(artisticError)
                    return
                }
                
                // 9. 画廊验收报告
                guard let critique = galleryResponse as? HTTPURLResponse else {
                    creativeMishap?(NSError(
                        domain: "CuratorError",
                        code: -2,
                        userInfo: [NSLocalizedDescriptionKey: "Invalid exhibition review"]
                    ))
                    return
                }
                
                // 10. 颜料质量检测
                guard let pigmentData = rawPigment, !pigmentData.isEmpty else {
                    creativeMishap?(NSError(
                        domain: "PigmentError",
                        code: -3,
                        userInfo: [NSLocalizedDescriptionKey: "Empty color palette"]
                    ))
                    return
                }
                
                // 11. 艺术成果解析
                do {
                    let abstractExpression = try JSONSerialization.jsonObject(
                        with: pigmentData,
                        options: [.mutableLeaves]
                    )
                    masterpieceDelivery?(abstractExpression)
                } catch let interpretationError {
                    creativeMishap?(NSError(
                        domain: "ArtCriticError",
                        code: -4,
                        userInfo: [
                            NSLocalizedDescriptionKey: "Failed artistic interpretation",
                            "rawManifestation": String(data: pigmentData.prefix(100), encoding: .utf8) ?? "Non-representational data",
                            "curatorNotes": interpretationError
                        ]
                    ))
                }
            }
        }.resume()
    }

  
}


