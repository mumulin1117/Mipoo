//
//  MMopFaceHeader.swift
//  MissdMgpoo
//
//  Created by mumu on 2025/5/20.
//

import UIKit

protocol MMopFaceHeaderDelegate {
    func topLinUserViewPick(indexData:Dictionary<String,Any>)
    func tfaceShowViewPick(indexData:Dictionary<String,Any>)
}
class MMopFaceHeader: UIView, UICollectionViewDelegate, UICollectionViewDataSource {
    var ftopLinUserModels:Array<Dictionary<String,Any>>  = Array<Dictionary<String,Any>>()
    var delegate:MMopFaceHeaderDelegate?
    
    var faceShowModels:Array<Dictionary<String,Any>>  = Array<Dictionary<String,Any>>()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
//        if collectionView ==  topLinUserView{
//            
//            return ftopLinUserModels.count
//        }
//        return faceShowModels.count
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
            return toplinecell
            
        }
        
        
        let faceShowcell = collectionView.dequeueReusableCell(withReuseIdentifier: "MMopFaceShowrCell", for: indexPath) as! MMopFaceShowrCell
        return faceShowcell
    }
    
    
    @IBOutlet weak var topLinUserView: UICollectionView!
    
    
    @IBOutlet weak var faceShowView: UICollectionView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
//        commonInit()
        initnialHearView()
        initnialFaceshowHeaderView()
    }
//    private func commonInit() {
//        let view =
//        view.frame = self.bounds
//        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        
//    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
//                commonInit()
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
