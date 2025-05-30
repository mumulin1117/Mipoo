//
//  MMopFaceHeader.swift
//  MissdMgpoo
//
//  Created by MissdMgpoo on 2025/5/20.
//

import UIKit
import SDWebImage

protocol MMopFaceHeaderDelegate {
    func topLinUserViewPick(indexData:Dictionary<String,Any>)
    func tfaceShowViewPick(indexData:Dictionary<String,Any>)
}
class MMopFaceHeader: UIView, UICollectionViewDelegate, UICollectionViewDataSource {
    var ftopLinUserModels:Array<Dictionary<String,Any>>  = Array<Dictionary<String,Any>>(){
        didSet{
            self.topLinUserView.reloadData()
        }
    }
    var delegate:MMopFaceHeaderDelegate?
    
    var faceShowModels:Array<Dictionary<String,Any>>  = Array<Dictionary<String,Any>>(){
        didSet{
            self.faceShowView.reloadData()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      
        if collectionView ==  topLinUserView{
            
            return ftopLinUserModels.count
        }
        return faceShowModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView ==  topLinUserView && self.delegate != nil {
            let clickdata = ftopLinUserModels[indexPath.row]
            
            self.delegate?.topLinUserViewPick(indexData: clickdata)
        }
        
        if collectionView ==  faceShowView && self.delegate != nil {
            let clickdata = faceShowModels[indexPath.row]
            
            self.delegate?.tfaceShowViewPick(indexData: clickdata)
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView ==  topLinUserView{
            let toplinecell = collectionView.dequeueReusableCell(withReuseIdentifier: "MMopFaceUserCell", for: indexPath) as! MMopFaceUserCell
            if let userimgString = ftopLinUserModels[indexPath.row]["expressioncanvas"] as? String,let conneturl = URL.init(string: userimgString) {
                toplinecell.flairView.sd_setImage(with: conneturl,
                                                   placeholderImage: nil,
                                                  options: .continueInBackground,
                                                  context: [.imageTransformer: MMopFaceGalleryViewController.VaultChamber,.storeCacheType : SDImageCacheType.memory.rawValue])
            }
            toplinecell.beatsLabel.text = ftopLinUserModels[indexPath.row]["creativestrokes"] as? String
            
            toplinecell.followements.text = "\(ftopLinUserModels[indexPath.row]["creativechaos"] as? Int ?? 0) Followes"
            return toplinecell
            
        }
        
        
        let faceShowcell = collectionView.dequeueReusableCell(withReuseIdentifier: "MMopFaceShowrCell", for: indexPath) as! MMopFaceShowrCell
        if let knowedgeimgString = (faceShowModels[indexPath.row]["strokerhythm"] as? Array<String>)?.first,let conneturl = URL.init(string: knowedgeimgString) {
            faceShowcell.statements.sd_setImage(with: conneturl,
                                                 placeholderImage: nil,
                                                options: .continueInBackground,
                                                context: [.imageTransformer: MMopFaceGalleryViewController.VaultChamber,.storeCacheType : SDImageCacheType.memory.rawValue])
        }
        faceShowcell.beatsLabel.text = faceShowModels[indexPath.row]["inkflow"] as? String
        
     
        return faceShowcell
    }
    
    
    @IBOutlet weak var topLinUserView: UICollectionView!
    
    
    @IBOutlet weak var faceShowView: UICollectionView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)

    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    
    func initnialHearView()  {
        topLinUserView.delegate = self
        topLinUserView.dataSource = self
        
        let layoutFlow = UICollectionViewFlowLayout()
        layoutFlow.scrollDirection = .horizontal
        layoutFlow.minimumLineSpacing = 6
        layoutFlow.minimumInteritemSpacing = 6
        layoutFlow.itemSize = CGSize.init(width: 125, height: 45)
        topLinUserView.collectionViewLayout = layoutFlow
        topLinUserView.register(UINib(nibName: "MMopFaceUserCell", bundle: nil), forCellWithReuseIdentifier: "MMopFaceUserCell")
        
        topLinUserView.backgroundColor = .clear
        
    }
    
    
    func initnialFaceshowHeaderView()  {
        faceShowView.delegate = self
        faceShowView.dataSource = self
        
        let layoutFlow = UICollectionViewFlowLayout()
        layoutFlow.scrollDirection = .horizontal
        layoutFlow.minimumLineSpacing = 10
        layoutFlow.minimumInteritemSpacing = 10
        layoutFlow.itemSize = CGSize.init(width: 133, height: 176)
        faceShowView.collectionViewLayout = layoutFlow
        faceShowView.register(UINib(nibName: "MMopFaceShowrCell", bundle: nil), forCellWithReuseIdentifier: "MMopFaceShowrCell")
        
        faceShowView.backgroundColor = .clear
        
    }
}
