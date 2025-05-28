//
//  MMopPigmentLabController.swift
//  MissdMgpoo
//
//  Created by MissdMgpoo on 2025/5/20.
//

import UIKit
import SDWebImage

class MMopPigmentLabController: UIViewController {
    var fantasiesModels:Array<Dictionary<String,Any>>  = Array<Dictionary<String,Any>>(){
        didSet{
            self.fantasiesView.reloadData()
        }
    }
    
    @IBOutlet weak var easelActivityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var indicaterSelView: UIImageView!
    
    @IBOutlet weak var rhythm: UIButton!
    
    @IBOutlet weak var rhythm1: UIButton!
    @IBOutlet weak var rhythm2: UIButton!

    private lazy var viewlLayoutFace: UICollectionViewFlowLayout = {
        let ViewFlowLayout = UICollectionViewFlowLayout.init()
        ViewFlowLayout.minimumLineSpacing = 12
        if MMopFaceGalleryViewController.VaultChamber.size.width > 10 {
            ViewFlowLayout.scrollDirection = .vertical
            
            ViewFlowLayout.itemSize = CGSize(width: UIScreen.main.bounds.width - 24, height: 365)
        }
        ViewFlowLayout.minimumInteritemSpacing = 12
        
        return ViewFlowLayout
    }()


    @IBOutlet weak var fantasiesView: UICollectionView!
 
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        expressiveDymTextures()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        fantasiesView.delegate = self
        fantasiesView.showsVerticalScrollIndicator = false
        wildIllusions()
    }
    
    func wildIllusions()  {
        fantasiesView.dataSource = self
        fantasiesView.register(UINib(nibName: "MMpoCommcute", bundle: nil), forCellWithReuseIdentifier: "MMpoCommcute")
        fantasiesView.collectionViewLayout = self.viewlLayoutFace
    }
    
    var pickType:Int = 1{
        didSet{
            expressiveDymTextures() 
        }
    }
    @IBAction func expressiveAlchemy(_ sender: UIButton) {
        playfulFantasies()
        if sender == rhythm {
            pickType = 1
        }
        if sender == rhythm1 {
            pickType = 2
        }
        if sender == rhythm2 {
            pickType = 3
        }
        sender.isSelected = true
        indicaterSelView.center.x = sender.center.x
    }
    
    private  func  playfulFantasies()  {
        rhythm.isSelected = false
        rhythm1.isSelected = false
        rhythm2.isSelected = false
        
    }
    
    @IBAction func addNewCommuty(_ sender: UIButton) {
        let postDym = ArtisticPoetry.artistarDoodle.creativeFantasies()
 
        let nextDiamaVC = MMpoAwarenessController.init(dreams: postDym)
        nextDiamaVC.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(nextDiamaVC, animated: true)
    }
    
    
    
    @IBAction func expertAIGo(_ sender: Any) {
        let AIexpertpath = ArtisticPoetry.artisticitevibes.creativeFantasies()
        
    
        
        let nextDiamaVC = MMpoAwarenessController.init(dreams: AIexpertpath)
        nextDiamaVC.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(nextDiamaVC, animated: true)
    }
}


extension MMopPigmentLabController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        fantasiesModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let piocell = collectionView.dequeueReusableCell(withReuseIdentifier: "MMpoCommcute", for: indexPath) as! MMpoCommcute
        if let knowedgeimgString = (fantasiesModels[indexPath.row]["strokerhythm"] as? Array<String>)?.first,let conneturl =  URL.init(string: knowedgeimgString){
            piocell.imaginative.sd_setImage(with: conneturl,
                                            placeholderImage: nil,
                                           options: .continueInBackground,
                                           context: [.imageTransformer: MMopFaceGalleryViewController.VaultChamber,.storeCacheType : SDImageCacheType.memory.rawValue])
         
        }
        
        
        if let knowedgeimgString = (fantasiesModels[indexPath.row]["strokerhythm"] as? Array<String>)?.last,let conneturl =  URL.init(string: knowedgeimgString){
            piocell.imaginativeBig.sd_setImage(with: conneturl,
                                            placeholderImage: nil,
                                           options: .continueInBackground,
                                           context: [.imageTransformer: MMopFaceGalleryViewController.VaultChamber,.storeCacheType : SDImageCacheType.memory.rawValue])
         
        }
        if let avatorString = fantasiesModels[indexPath.row]["visualpoetry"] as? String,let conneturl =  URL.init(string: avatorString){
            piocell.flairView.sd_setImage(with: conneturl,
                                            placeholderImage: nil,
                                           options: .continueInBackground,
                                           context: [.imageTransformer: MMopFaceGalleryViewController.VaultChamber,.storeCacheType : SDImageCacheType.memory.rawValue])
         
        }
        piocell.Report.addTarget(self, action: #selector(liberation), for: .touchUpInside)
        piocell.followements.text = timestampToDateTimeString(timestamp: fantasiesModels[indexPath.row]["wildcreativity"] as? TimeInterval ?? 1747298547)
        piocell.beatsLabel.text =  fantasiesModels[indexPath.row]["creativeenergy"] as? String
        piocell.liberationLabel.text =  fantasiesModels[indexPath.row]["boldcontrasts"] as? String
        piocell.liberationINK.setTitle(" \(fantasiesModels[indexPath.row]["facetapestry"] as? Int ?? 0)", for: .normal)
        return piocell
        
    }
    func timestampToDateTimeString(timestamp: TimeInterval) -> String {
        let date = Date(timeIntervalSince1970: timestamp / 1000.0)
        let formatter = DateFormatter()
        if MMopFaceGalleryViewController.VaultChamber.size.width > 10 {
            formatter.timeZone = TimeZone.current
        }
       // 使用本地时区
                
        formatter.locale = Locale.current
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        return formatter.string(from: date)
    }
    //动态
    func expressiveDymTextures()  {
        self.easelActivityIndicator.startAnimating()
        var color = easelActivityIndicator.color ?? UIColor.white
        color = UIColor.red
        var enputCOunt = 3
        let parameters: [String:Any] = [
            "nicheHubs": "54684883",
            "expressivemarks":1,//dynamicType
            "vividimagination":20,//size
            "textureplay":1,
        
            "handdrawncharm":pickType //selectType
        ]
        if MMopFaceGalleryViewController.VaultChamber.size.width < 10 {
            enputCOunt += 2
            return
        }
        RebellionController.canvasTransmissionChannel(boldtextures:color,stylepoetry:enputCOunt,artisticCollective: "/bvlpzuyxruxwltz/kygqsm", pigmentComposition: parameters) { anydata in
            
            self.easelActivityIndicator.stopAnimating()
            guard  color != UIColor.clear,
                   let inkfantasies = anydata as? Dictionary<String,Any> ,
                 
                  enputCOunt > 0,
                  let creativeechoes = inkfantasies[ArtisticPoetry.extractVibrantPigments(colorFormula:"dsastpa" )] as? Array<Dictionary<String,Any>>
                    
            else {
           
                let shareTips = ArtisticPoetry.extractVibrantPigments(colorFormula:"Nloi zSwhzafrned wDnaotfat rtpor lshhaoywp!" )
                
                MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: shareTips))
                return
            }
            
         
            color = self.view.backgroundColor ?? .white
            self.fantasiesModels = creativeechoes.filter({ diac in
                return diac["fluidlines"] as? String == nil
            })
            
     
          
        } creativeMishap: { anyerror in
            if MMopFaceGalleryViewController.VaultChamber.size.width < 10 {
                enputCOunt += 2
                return
            }
            MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: anyerror.localizedDescription))
            self.easelActivityIndicator.stopAnimating()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       if let artisticrebellion = fantasiesModels[indexPath.row]["artisticrebellion"] as? Int {
           let detailVideopath = ArtisticPoetry.artistisymphony.creativeFantasies(later: "\(artisticrebellion)")
           
        
           let nextDiamaVC = MMpoAwarenessController.init(dreams: detailVideopath)
           nextDiamaVC.hidesBottomBarWhenPushed = true
           self.navigationController?.pushViewController(nextDiamaVC, animated: true)
       }
        
    }
    
    
    @objc func liberation() {
        
        let reportpath = ArtisticPoetry.artisticreport.creativeFantasies()
    
        
        
        let nextDiamaVC = MMpoAwarenessController.init(dreams: reportpath)
        nextDiamaVC.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(nextDiamaVC, animated: true)
    }
}
