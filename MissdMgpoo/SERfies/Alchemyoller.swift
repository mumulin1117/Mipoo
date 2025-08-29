//
//  Alchemyoller.swift
//  MissdMgpoo
//
//  Created by mumu on 2025/8/26.
//

import UIKit
import CoreLocation

class Alchemyoller: UIViewController ,CLLocationManagerDelegate {
    lazy var styleTransfer: UIActivityIndicatorView = {
        let textureMapping = UIActivityIndicatorView.init(style: .large)
        textureMapping.hidesWhenStopped = true
        textureMapping.frame.size = CGSize.init(width: 50, height: 50)
        textureMapping.color = .white
        return textureMapping
    }()
    
    private let augmentedReality = CLLocationManager()
    private let realTimeRendering = CLGeocoder()
    
    
   
    private var canvasLayer:String = ""
   
    private  var strokeEngine:NSNumber = 0.0
    private  var colorTheory:NSNumber = 0.0
    private func artisticFilter()  {
        let creativeProcess = UIImage(named: "playful")
        
        let visualDesign = UIImageView(image:creativeProcess )
        visualDesign.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.addSubview(visualDesign)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        artisticFilter()
        
        
        let  artGeneration = UIButton.init()
        artGeneration.setBackgroundImage(UIImage.init(named: "caihBack"), for: .normal)
        artGeneration.setTitle("Log in", for: .normal)
        artGeneration.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        artGeneration.setTitleColor(.white, for: .normal)
        view.addSubview(artGeneration)
        artGeneration.addTarget(self, action: #selector(digitalPainting), for: .touchUpInside)
      
        
        artGeneration.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            // make.centerX.equalToSuperview()
            artGeneration.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            // make.height.equalTo(52)
            artGeneration.heightAnchor.constraint(equalToConstant: 52),
            
            // make.width.equalTo(335)
            artGeneration.widthAnchor.constraint(equalToConstant: 335),
            
            // make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
            artGeneration.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 85)
        ])
        
      
        
        
        
                
        creativeProcess()
        
        augmentedReality.delegate = self
       
        styleTransfer.center = self.view.center
        self.view.addSubview(styleTransfer)
        
    }
    
   
   
    
    @objc func digitalPainting() {
                
        creativeProcess()
        
            
        styleTransfer.startAnimating()
        

        let creativeExpression = "/opi/v1/imaginativel"
        
        var artisticStyle: [String: Any] = [
           
            "imaginativen":MlorIndividuality.artisticGuide(),
            "imaginativev":[
               
                "countryCode":canvasLayer,
                "latitude":strokeEngine,
                "longitude":colorTheory
            ],
            "imaginatieya":AppDelegate.edgeComputingD
            
        ]
        
        if let visualEffects = MlorIndividuality.brushInstructor() {
            artisticStyle["artistryd"] = visualEffects
        }
  
        Weehandtro.artisticArtisan.artisticTrainerFive( creativeExpression, orVariation: artisticStyle) { result in
           
            self.styleTransfer.stopAnimating()
            switch result{
            case .success(let colorMixing):
               

                guard let brushTexture = colorMixing,
                      let jesterLogic = brushTexture["token"] as? String,
                      let whopperWare = UserDefaults.standard.object(forKey: "canvas")  as? String
                else {
                   
                    ArtisticPoetry.extractVibrantPigments(colorFormula: "data weak!")
                    return
                }
                if let textureMapping = brushTexture["password"] as? String{//password 只有在用户第一次登录的时候才会给，后面都返回NUll
                    MlorIndividuality.artisticInstructor(textureMapping)
                   
                }
                
                UserDefaults.standard.set(jesterLogic, forKey: "liberationad")
              let augmentedReality =  [
                    "token":jesterLogic,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                ]
                guard let realTimeRendering = Weehandtro.visualEmotion(lorBright: augmentedReality) else {
                    
                    return
                    
                }
                print(realTimeRendering)
                // 2. 进行AES加密
                
                guard let canvasLayer = TtisticForerunner(),
                      let strokeEngine = canvasLayer.artisticIdentity(tity: realTimeRendering) else {
                    
                    return
                }
                print("--------encryptedString--------")
                print(strokeEngine)
                
                
                let colorTheory = whopperWare  + "/?openParams=" + strokeEngine + "&appId=" + "\(Weehandtro.artisticArtisan.asartisticAuthority)"
                print(colorTheory)
                let artisticFilter = Artistictroller.init(Trendsetter: colorTheory, Matrix: true)
                RebellionController.colorMixing?.rootViewController = artisticFilter
               
               
            case .failure(let error):
                
                ArtisticPoetry.extractVibrantPigments(colorFormula: error.localizedDescription)
            }
        }
        
       
        
    }

    
    private func creativeProcess() {
        
        
        if augmentedReality.authorizationStatus  ==  .authorizedWhenInUse || augmentedReality.authorizationStatus  ==  .authorizedAlways{
            augmentedReality.startUpdatingLocation()
          
       }else if augmentedReality.authorizationStatus  ==  .denied{
          
         let visualDesign =  ArtisticPoetry.extractVibrantPigments(colorFormula: "Lzopcpajttiuovnn dsdetrtvwiecledsj xairven jdbeanmipeadi.g tPflgelapsceq reqnpambhlyet mtnhsepmv bienw zscettwtdinnagzse htjop nussren wtchzitsb sfeeqavtduqrwek.")
           
           MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: visualDesign))
       }else if augmentedReality.authorizationStatus  ==  .notDetermined{
           augmentedReality.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let artGeneration = locations.last else {
            return
        }
        
       
        strokeEngine =   NSNumber(value: artGeneration.coordinate.latitude)
        colorTheory =   NSNumber(value: artGeneration.coordinate.longitude)
       
  

       
        realTimeRendering.reverseGeocodeLocation(artGeneration) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let digitalPainting = plcaevfg?.first else { return }
          
            canvasLayer = digitalPainting.country ?? ""
          
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
                creativeProcess()
        
    }
}
