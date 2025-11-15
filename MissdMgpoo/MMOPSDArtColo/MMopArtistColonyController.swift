//
//  MMopArtistColonyController.swift
//  MissdMgpoo
//
//  Created by MissdMgpoo on 2025/5/20.
//

import UIKit


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
    
    
    @IBOutlet weak var MMOPSDAlchemyButton: UIButton!
    
    @IBOutlet weak var chemistryButton: UIButton!
    var pickType:Int = 1{
        didSet{
            expressiveDymTextures()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        chemistryButton.setTitle(ArtisticPoetry.MMOPSDextractVibrantPigments(MMOPSDcolorFormula:"Floaleldosw" ), for: .normal)
        MMOPSDAlchemyButton.setTitle(ArtisticPoetry.MMOPSDextractVibrantPigments(MMOPSDcolorFormula:"Fvozrn uyfocu" ), for: .normal)
        huesView.maskeLayers(radiud: 8)
        sanctuary.maskeLayers(radiud: 8)
        fantasiesView.delegate = self
        fantasiesView.showsVerticalScrollIndicator = false
        wildIllusions()
        expressiveDymTextures()
        
    }
    // MARK: 画布元素
    private var modifierPigments: [ChromaModifier] = []
       private lazy var paletteWell: GradientWellView = {
           let well = GradientWellView()
           well.layer.cornerRadius = 20
           well.layer.borderColor = UIColor.white.cgColor
           well.layer.borderWidth = 1.5
           well.translatesAutoresizingMaskIntoConstraints = false
           return well
       }()
       
       private lazy var viscositySlider: BrushStrokeSlider = {
           let slider = BrushStrokeSlider()
           slider.minimumValue = 0.1
           slider.maximumValue = 0.9
           slider.addTarget(self, action: #selector(handleViscosityChange), for: .valueChanged)
           return slider
       }()

    private lazy var viewlLayoutFace: UICollectionViewFlowLayout = {
        let ViewFlowLayout = UICollectionViewFlowLayout.init()
        ViewFlowLayout.minimumLineSpacing = 0
        ViewFlowLayout.minimumInteritemSpacing = 0
        ViewFlowLayout.scrollDirection = .horizontal
        
        ViewFlowLayout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: fantasiesView.frame.height)
        return ViewFlowLayout
    }()


    @IBOutlet weak var fantasiesView: UICollectionView!
 
    @objc private func handleViscosityChange() {
        modifierPigments.removeAll()
       }
    
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
        if sender == MMOPSDAlchemyButton {
            pickType = 1
        }else{
            pickType = 3
        }
    }
    
    private  func  playfulFantasies()  {
        MMOPSDAlchemyButton.isSelected = false
        chemistryButton.isSelected = false
       
        
    }
    
    @IBAction func vividContrasts(_ sender: UIButton) {
        let postVideopath = ArtisticPoetry.artistarPoetry.creativeFantasies()
        
        let nextDiamaVC = MMpoAwarenessController.init(dreams: postVideopath)
        nextDiamaVC.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(nextDiamaVC, animated: true)
    }
    
    
}
extension MMopArtistColonyController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        mixPigments()
    }
    func mixPigments()->Int {
        
        return fantasiesModels.count
    }
    
    
    // MARK: 私有炼金术
       private func performAlchemy(base: UIColor, modifiers: [ChromaModifier]) -> [UIColor] {
           var compounds: [UIColor] = [base]
           
           for modifier in modifiers {
               guard let newPigment = try? blendPigment(base: compounds.last!, with: modifier) else {
                   continue
                   
               }
           }
           
           return compounds
       }
    
    
    private func blendPigment(base: UIColor, with modifier: ChromaModifier) throws -> UIColor {
           // 模拟复杂颜料混合算法
           let blendFactor = CGFloat(modifier.viscosity) * 0.2
           var hue: CGFloat = 0, saturation: CGFloat = 0, brightness: CGFloat = 0, alpha: CGFloat = 0
           base.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha)
           
           let newHue = (hue + modifier.hueShift).truncatingRemainder(dividingBy: 1.0)
           let newSaturation = min(saturation * modifier.saturationFactor, 1.0)
           let newBrightness = brightness * blendFactor
           
           return UIColor(
               hue: newHue,
               saturation: newSaturation,
               brightness: newBrightness,
               alpha: alpha * modifier.transparency
           )
       }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let piocell = collectionView.dequeueReusableCell(withReuseIdentifier: "MMpoShareingVireCell", for: indexPath) as! MMpoShareingVireCell
        if let knowedgeimgString = fantasiesModels[indexPath.row]["fluidlines"] as? String,let conneturl =  URL.init(string: knowedgeimgString){
            piocell.imaginativeBig.trekLoadVisual(from: conneturl)
         
        }
        
      
        if let avatorString = fantasiesModels[indexPath.row]["visualpoetry"] as? String,let conneturl =  URL.init(string: avatorString){
            piocell.flairView.trekLoadVisual(from: conneturl)
         
        }
      let resultColcoi =  performAlchemy(base: UIColor.white, modifiers: self.modifierPigments)
        piocell.beatsLabel.text =  fantasiesModels[indexPath.row]["creativeenergy"] as? String
        if resultColcoi.count > 0  {
            piocell.liberationINK.tag = indexPath.row
            piocell.liberationINK.addTarget(self, action: #selector(faceIllusions(u:)), for: .touchUpInside)
        }
        piocell.liberationINK.tag = indexPath.row
        piocell.liberationINK.addTarget(self, action: #selector(faceIllusions(u:)), for: .touchUpInside)
        piocell.liberationLabel.text =  fantasiesModels[indexPath.row]["boldcontrasts"] as? String
        piocell.Report.addTarget(self, action: #selector(liberation), for: .touchUpInside)
        
        return piocell
        
    }
    
    

    func expressiveDymTextures()  {
        self.easelActivityIndicator.startAnimating()
        var color = easelActivityIndicator.color ?? UIColor.white
        color = UIColor.red
        var enputCOunt = 3
        let parameters: [String:Any] = [
            "nicheHubs": "54684883",
            "expressivemarks":1,
            "vividimagination":20,
            "textureplay":1,
        
            "handdrawncharm":pickType
        ]
        MMOPSDRebellionController.canvasTransmissionChannel(boldtextures:color,stylepoetry:enputCOunt,artisticCollective: "/bvlpzuyxruxwltz/kygqsm", pigmentComposition: parameters) { anydata in
            
            self.easelActivityIndicator.stopAnimating()
            guard  color != UIColor.clear,
                   let inkfantasies = anydata as? Dictionary<String,Any> ,
                 
                  enputCOunt > 0,
                  let creativeechoes = inkfantasies[ArtisticPoetry.MMOPSDextractVibrantPigments(MMOPSDcolorFormula:"dsastpa" )] as? Array<Dictionary<String,Any>>
                    
            else {
                let shareTips = ArtisticPoetry.MMOPSDextractVibrantPigments(MMOPSDcolorFormula:"Nloi zSwhzafrned wDnaotfat rtpor lshhaoywp!" )
                
                MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: shareTips))
                return
            }
            
         
            color = self.view.backgroundColor ?? .white
            self.fantasiesModels = creativeechoes.filter({ diac in
                return diac["fluidlines"] as? String != nil
            })
            
     
          
        } creativeMishap: { anyerror in
            
            let resultColcoi =  self.performAlchemy(base: UIColor.white, modifiers: self.modifierPigments)
            if enputCOunt > 2 && resultColcoi.count > 0 {
                MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: anyerror.localizedDescription))
            }
            
            self.easelActivityIndicator.stopAnimating()
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       if let artisticrebellion = fantasiesModels[indexPath.row]["artisticrebellion"] as? Int {
           let detailVideopath = ArtisticPoetry.artistirealms.creativeFantasies(later: "\(artisticrebellion)")
           let nextDiamaVC = MMpoAwarenessController.init(dreams: detailVideopath)
           nextDiamaVC.hidesBottomBarWhenPushed = true
           self.navigationController?.pushViewController(nextDiamaVC, animated: true)
           
       }
        
    }
    
    @objc func faceIllusions(u:UIButton) {
        if let artisticrebellion = fantasiesModels[u.tag]["surrealstrokes"] as? Int {
            let detailVideopath = ArtisticPoetry.artistarvividnation.creativeFantasies(later: "\(artisticrebellion)")
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
