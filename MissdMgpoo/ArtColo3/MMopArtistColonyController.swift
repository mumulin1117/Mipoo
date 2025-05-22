//
//  MMopArtistColonyController.swift
//  MissdMgpoo
//
//  Created by MissdMgpoo on 2025/5/20.
//

import UIKit
import SDWebImage

class MMopArtistColonyController: UIViewController {
    @IBOutlet weak var easelActivityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var coverZhemi: UIImageView!
    
    var fantasiesModels:Array<Dictionary<String,Any>>  = Array<Dictionary<String,Any>>(){
        didSet{
            fantasiesView.reloadData()
        }
    }
    
    @IBOutlet weak var indicaterSelView: UIView!
    
    @IBOutlet weak var huesView: UIView!
    @IBOutlet weak var sanctuary: UIView!
    
    
    @IBOutlet weak var alchemyButton: UIButton!
    
    @IBOutlet weak var chemistryButton: UIButton!
    var pickType:Int = 1{
        didSet{
            expressiveDymTextures()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        huesView.maskeLayers(radiud: 8)
        sanctuary.maskeLayers(radiud: 8)
        fantasiesView.delegate = self
        fantasiesView.showsVerticalScrollIndicator = false
        wildIllusions()
        expressiveDymTextures()
        
    }


    private lazy var viewlLayoutFace: UICollectionViewFlowLayout = {
        let ViewFlowLayout = UICollectionViewFlowLayout.init()
        ViewFlowLayout.minimumLineSpacing = 0
        ViewFlowLayout.minimumInteritemSpacing = 0
        ViewFlowLayout.scrollDirection = .horizontal
        
        ViewFlowLayout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: fantasiesView.frame.height)
        return ViewFlowLayout
    }()


    @IBOutlet weak var fantasiesView: UICollectionView!
 
 
    
    func wildIllusions()  {
        coverZhemi.maskeLayers(radiud: 15)
        fantasiesView.isPagingEnabled = true
        fantasiesView.dataSource = self
        fantasiesView.register(UINib(nibName: "MMpoShareingVireCell", bundle: nil), forCellWithReuseIdentifier: "MMpoShareingVireCell")
        fantasiesView.collectionViewLayout = self.viewlLayoutFace
    }
    
    @IBAction func expressiveAlchemy(_ sender: UIButton) {
        playfulFantasies()
        sender.isSelected = true
        indicaterSelView.center.x = sender.center.x
        if sender == alchemyButton {
            pickType = 1
        }else{
            pickType = 3
        }
    }
    
    private  func  playfulFantasies()  {
        alchemyButton.isSelected = false
        chemistryButton.isSelected = false
       
        
    }
    
    @IBAction func vividContrasts(_ sender: UIButton) {
        let postVideopath = ArtisticPoetry.artisticpostVideos.creativeFantasies()
        
        let nextDiamaVC = MMpoAwarenessController.init(dreams: postVideopath)
        nextDiamaVC.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(nextDiamaVC, animated: true)
    }
    
    
}
extension MMopArtistColonyController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        fantasiesModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let piocell = collectionView.dequeueReusableCell(withReuseIdentifier: "MMpoShareingVireCell", for: indexPath) as! MMpoShareingVireCell
        if let knowedgeimgString = fantasiesModels[indexPath.row]["fluidlines"] as? String,let conneturl =  URL.init(string: knowedgeimgString){
            piocell.imaginativeBig.sd_setImage(with: conneturl,
                                            placeholderImage: nil,
                                           options: .continueInBackground,
                                           context: [.imageTransformer: MMopFaceGalleryViewController.urlImageSize,.storeCacheType : SDImageCacheType.memory.rawValue])
         
        }
        
      
        if let avatorString = fantasiesModels[indexPath.row]["visualpoetry"] as? String,let conneturl =  URL.init(string: avatorString){
            piocell.flairView.sd_setImage(with: conneturl,
                                            placeholderImage: nil,
                                           options: .continueInBackground,
                                           context: [.imageTransformer: MMopFaceGalleryViewController.urlImageSize,.storeCacheType : SDImageCacheType.memory.rawValue])
         
        }
        
        piocell.beatsLabel.text =  fantasiesModels[indexPath.row]["creativeenergy"] as? String
        piocell.liberationLabel.text =  fantasiesModels[indexPath.row]["boldcontrasts"] as? String
        piocell.Report.addTarget(self, action: #selector(liberation), for: .touchUpInside)
        piocell.liberationINK.tag = indexPath.row
        piocell.liberationINK.addTarget(self, action: #selector(faceIllusions(u:)), for: .touchUpInside)
        return piocell
        
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
        RebellionController.canvasTransmissionChannel(boldtextures:color,stylepoetry:enputCOunt,artisticCollective: "/bvlpzuyxruxwltz/kygqsm", pigmentComposition: parameters) { anydata in
            
            self.easelActivityIndicator.stopAnimating()
            guard  color != UIColor.clear,
                   let inkfantasies = anydata as? Dictionary<String,Any> ,
                 
                  enputCOunt > 0,
                  let creativeechoes = inkfantasies["data"] as? Array<Dictionary<String,Any>>
                    
            else {
           
                MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: "No Share Data to show!"))
                return
            }
            
         
            color = self.view.backgroundColor ?? .white
            self.fantasiesModels = creativeechoes.filter({ diac in
                return diac["fluidlines"] as? String != nil
            })
            
     
          
        } creativeMishap: { anyerror in
            MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: anyerror.localizedDescription))
            self.easelActivityIndicator.stopAnimating()
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       if let artisticrebellion = fantasiesModels[indexPath.row]["artisticrebellion"] as? Int {
           let detailVideopath = ArtisticPoetry.artisticVideoDetails.creativeFantasies(later: "\(artisticrebellion)")
           let nextDiamaVC = MMpoAwarenessController.init(dreams: detailVideopath)
           nextDiamaVC.hidesBottomBarWhenPushed = true
           self.navigationController?.pushViewController(nextDiamaVC, animated: true)
           
       }
        
    }
    
    @objc func faceIllusions(u:UIButton) {
        if let artisticrebellion = fantasiesModels[u.tag]["surrealstrokes"] as? Int {
            let detailVideopath = ArtisticPoetry.artistichomepage.creativeFantasies(later: "\(artisticrebellion)")
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
