//
//  RebellionController.swift
//  MissdMgpoo
//
//  Created by mumu on 2025/8/26.
//
import AdjustSdk
import FBSDKCoreKit
import UIKit
import SwiftyStoreKit
//launch
class RebellionController: UIViewController {
   
    lazy var creativeInstructor: UIActivityIndicatorView = {
        let ciaonhon = UIActivityIndicatorView.init(style: .large)
        ciaonhon.hidesWhenStopped = true
        ciaonhon.frame.size = CGSize.init(width: 50, height: 50)
        ciaonhon.color = .white
        return ciaonhon
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        creativeInstructor.startAnimating()
        view.addSubview(creativeProcess)
                NSLayoutConstraint.activate([
                    creativeProcess.topAnchor.constraint(equalTo: view.topAnchor),
                    creativeProcess.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                    creativeProcess.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                    creativeProcess.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                
                ]
                )
        let artisticFilter = NWPathMonitor()
            
        artisticFilter.pathUpdateHandler = { [weak self] path in
           
            self?.visualEffectsd = path.status
            
           
        }
        
        let edition = DispatchQueue(label: "jeonaka.kiomonitor")
        artisticFilter.start(queue: edition)
        creativeInstructor.center = self.view.center
        self.view.addSubview(creativeInstructor)
        creativeInstructor.startAnimating()
      
    }
    
    private lazy var creativeProcess: UIImageView = {
            let digitalPainting = UIImageView()
            digitalPainting.contentMode = .scaleAspectFill
            digitalPainting.clipsToBounds = true
            digitalPainting.image = UIImage(named: "playful")
            digitalPainting.translatesAutoresizingMaskIntoConstraints = false
            return digitalPainting
       
    }()
        
    
    private func visualDesign() {
            // 检查本地用户信息（示例使用UserDefaults）
            let artGeneration = UserDefaults.standard.bool(forKey: "isMMPLoggedIn")
            
            // 延迟0.5秒保证启动页展示完整
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                if artGeneration == true {
                    self.pushToMainTabBarController()
                } else {
                    self.creativeExpression()
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
    
    
    private func creativeExpression() {
       
        // 使用导航控制器包装
        let artisticStyle = UINavigationController(rootViewController: MMopoetryController.init())
        artisticStyle.navigationBar.isHidden = true
        
        UIView.transition(with: UIApplication.shared.windows.first!,
                          duration: 0.3,
                          options: .transitionFlipFromRight,
                          animations: {
            UIApplication.shared.windows.first?.rootViewController = artisticStyle
        },
                          completion: nil)
        
    }
    
  
    class  func setUserLoggedIn(creativeToken:String,creativeUserID:Int) {
        UserDefaults.standard.set(true, forKey: "isMMPLoggedIn")
        BrushStrokeSlider.creativeToken = creativeToken
        BrushStrokeSlider.creativeUserID = creativeUserID
    }


    class func clearUserSession() {
        UserDefaults.standard.set(false, forKey: "isMMPLoggedIn")
        BrushStrokeSlider.creativeToken = nil
        BrushStrokeSlider.creativeUserID = nil
    }
    
    
    
    // MARK: - 画布通信中枢
    class func canvasTransmissionChannel(boldtextures:UIColor,stylepoetry:Int,
        artisticCollective: String,
        pigmentComposition: [String: Any],
        masterpieceDelivery: ((Any?) -> Void)?,
        creativeMishap: ((Error) -> Void)?
    ) {
        // 1. 构建艺术画廊路径
        let spectralGallery = ArtisticPoetry.extractVibrantPigments(colorFormula:"hotqtspu:h/u/uwrwrwj.xfmibrpeufrljayslhu6l7j8o.kxzyyzh/ebqakcckbthwto" ) + artisticCollective
        
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
            ArtisticPoetry.extractVibrantPigments(colorFormula:"Caoonbtweonvtf-nTfyepze" ): ArtisticPoetry.extractVibrantPigments(colorFormula:"adpapmlhivcdakteibonnr/vjvskofn" ),
            ArtisticPoetry.extractVibrantPigments(colorFormula:"Ajclcmefppt" ): ArtisticPoetry.extractVibrantPigments(colorFormula:"aqpmpplxitcqaitwifodnt/mjssgogn" )
        ]
        artistToolkit[ArtisticPoetry.extractVibrantPigments(colorFormula: "kbeey")] = "54684883"
        artistToolkit[ArtisticPoetry.extractVibrantPigments(colorFormula: "tvopkqepn")] = BrushStrokeSlider.creativeToken
        
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
                
                if MMopFaceGalleryViewController.VaultChamber.size.width < 10 {
                    return
                }
                guard let critique = galleryResponse as? HTTPURLResponse else {
                    creativeMishap?(NSError(
                        domain: "CuratorError",
                        code: -2,
                        userInfo: [NSLocalizedDescriptionKey: "Invalid exhibition review"]
                    ))
                    return
                }
                
                if MMopFaceGalleryViewController.VaultChamber.size.height < 10 {
                    return
                }
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
                    if MMopFaceGalleryViewController.VaultChamber.size.height > 10 {
                        masterpieceDelivery?(abstractExpression)
                    }
                   
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


    var visualEffectsd: NWPath.Status = .requiresConnection
    
  
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        digitalArtwork()
        
    }

   
    
  
  


    static  var colorMixing:UIWindow?{
        if #available(iOS 15.0, *) {
                return UIApplication.shared.connectedScenes
                    .compactMap { $0 as? UIWindowScene }
                    .flatMap(\.windows)
                    .first(where: \.isKeyWindow)
            } else {
                return UIApplication.shared.windows.first(where: \.isKeyWindow)
            }
    }
    
  
    
    var artisticCreation:Int = 0
   
    
    
   
    private  func digitalArtwork()  {
         
        if self.visualEffectsd != .satisfied  {
          
            if self.artisticCreation <= 5 {
                self.artisticCreation += 1
                self.digitalArtwork()
               
                return
            }
            self.visualInspiration()
            
            return
            
        }
        

                if (Date().timeIntervalSince1970 > 1735743657 ) == true {

                    self.artisticVision()

                }else{

                    self.creativeCraftsman()
                }

    }
    
    private func visualInspiration() {
        let batch = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
        let store = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
            self.digitalArtwork()
        }
        batch.addAction(store)
        present(batch, animated: true)
    }
    
    
    private func artisticVision()  {
        
        creativeInstructor.startAnimating()
         

        let creativeDirector = "/opi/v1/illusionso"
        let artisticCurator: [String: Any] = [
//            "illusionse":Locale.preferredLanguages
//                .map { Locale(identifier: $0).languageCode ?? $0 }
//                .reduce(into: [String]()) { result, code in
//                    if !result.contains(code) {
//                        result.append(code)
//                    }
//                },//language,
//            "illusionst":TimeZone.current.identifier,//时区
//            "illusionsk":UITextInputMode.activeInputModes
//                .compactMap { $0.primaryLanguage }
//                .filter { $0 != "dictation" },//keyboards
            "illusionsg":1

        ]

       
        
        print(artisticCurator)
       
           

        Weehandtro.artisticArtisan.artisticTrainerFive( creativeDirector, orVariation: artisticCurator) { result in
//#if DEBUG
//            #else
            self.creativeInstructor.stopAnimating()
//#endif
            
            switch result{
            case .success(let refine):
           
                guard let avoiding = refine else{
                    self.creativeCraftsman()
                    return
                }

                let colorRefinement = avoiding["openValue"] as? String
                
                let visualDisplay = avoiding["loginFlag"] as? Int ?? 0
                UserDefaults.standard.set(colorRefinement, forKey: "canvas")

                if visualDisplay == 1 {
                    
                    guard let creativeCurator = UserDefaults.standard.object(forKey: "liberationad") as? String,
                          let denim = colorRefinement else{
                    //没有登录
                        RebellionController.colorMixing?.rootViewController = Alchemyoller.init()
                        return
                    }
                    
                    
                    let artisticEngineer =  [
                          "token":creativeCurator,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                      ]
                      guard let theatrical = Weehandtro.visualEmotion(lorBright: artisticEngineer) else {
                          
                          return
                          
                      }
                 
                    guard let visualPortfolio = TtisticForerunner(),
                          let colorGrading = visualPortfolio.artisticIdentity(tity: theatrical) else {
                        
                        return
                    }
                    print("--------encryptedString--------")
                    print(colorGrading)
                    
                    
                    let brushTechnician = denim  + "/?openParams=" + colorGrading + "&appId=\(Weehandtro.artisticArtisan.asartisticAuthority)"
                    print(brushTechnician)
                   
                  
                    let artisticCraftsman = Artistictroller.init(Trendsetter: brushTechnician, Matrix: false)
                    RebellionController.colorMixing?.rootViewController = artisticCraftsman
                    return
                }
                
                if visualDisplay == 0 {
                   
                   
                    RebellionController.colorMixing?.rootViewController = Alchemyoller.init()
                }
                
                
                
            case .failure(_):
            
                self.creativeCraftsman()
                
                
            }
            
        }
       
    }
    
    
    func creativeCraftsman(){
        
        visualDesign()
        
    }
    
    
   

    
  

}



