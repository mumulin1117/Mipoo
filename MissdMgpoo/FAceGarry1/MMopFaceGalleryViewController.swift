//
//  MMopFaceGalleryViewController.swift
//  MissdMgpoo
//
//  Created by mumu on 2025/5/20.
//

import UIKit
import SDWebImage
class MMopFaceGalleryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, MMopFaceHeaderDelegate {
    static let urlImageSize = SDImageResizingTransformer(
        size: CGSize(width: 450, height: 450),
        scaleMode: .aspectFill
    )
    @IBOutlet weak var easelActivityIndicator: UIActivityIndicatorView!
    
    func topLinUserViewPick(indexData: Dictionary<String, Any>) {
        
    }
    
    func tfaceShowViewPick(indexData: Dictionary<String, Any>) {
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DYMShowModels.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        340
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        headerView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mipoocee = tableView.dequeueReusableCell(withIdentifier: "MMopChokenCell", for: indexPath) as! MMopChokenCell
        if let knowedgeimgString = (DYMShowModels[indexPath.row]["strokerhythm"] as? Array<String>)?.first,let conneturl =  URL.init(string: knowedgeimgString){
            mipoocee.flairView.sd_setImage(with: conneturl,
                                            placeholderImage: nil,
                                           options: .continueInBackground,
                                           context: [.imageTransformer: MMopFaceGalleryViewController.urlImageSize,.storeCacheType : SDImageCacheType.memory.rawValue])
         
        }
        mipoocee.beatsLabel.text = DYMShowModels[indexPath.row]["inkflow"] as? String
        mipoocee.identityLabel.text =  DYMShowModels[indexPath.row]["boldcontrasts"] as? String
        
       
        return mipoocee
        
    }
    
    var DYMShowModels:Array<Dictionary<String,Any>>  = Array<Dictionary<String,Any>>()
   
    
    var headerView : MMopFaceHeader = Bundle.main.loadNibNamed("MMopFaceHeader", owner:nil, options: nil)?.first as! MMopFaceHeader
    // MMopFaceHeader.init()

    @IBOutlet weak var artisticWhispers: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        expressiveExpertTextures()
        expressiveDymTextures()
        
        boldStatements()
    }

    func boldStatements()  {
        artisticWhispers.dataSource = self
        artisticWhispers.delegate = self
        artisticWhispers.rowHeight = 150
        artisticWhispers.register(UINib.init(nibName: "MMopChokenCell", bundle: nil), forCellReuseIdentifier: "MMopChokenCell")
       
        headerView.delegate = self
//        artisticWhispers.tableHeaderView = headerView
        
        headerView.initnialHearView()
        headerView.initnialFaceshowHeaderView()
    }

    @IBAction func illusions(_ sender: UIButton) {
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        expressiveUsersTextures()
        
       
    }

}


extension MMopFaceGalleryViewController{
    //香薰
    func expressiveExpertTextures()  {
       
        var color = artisticWhispers.backgroundColor ?? UIColor.white
        var enputCOunt = 3
        let parameters: [String:Any] = [
            "nicheHubs": "54684883",
            "expressivemarks":5,//dynamicType香薰   dynamicType = 5
            "vividimagination":10,//size
            "textureplay":1,
                "brushflair":2 //selectVersion
            
        ]
        color = UIColor.red
        RebellionController.canvasTransmissionChannel(boldtextures:color,stylepoetry:enputCOunt,artisticCollective: "/bvlpzuyxruxwltz/kygqsm", pigmentComposition: parameters) { anydata in
            
           
            guard  color != UIColor.clear,
                   let inkfantasies = anydata as? Dictionary<String,Any> ,
                 
                  enputCOunt > 0,
                  let creativeechoes = inkfantasies["data"] as? Array<Dictionary<String,Any>>
                    
            else {
           
               
                return
            }
            
         
            color = self.view.backgroundColor ?? .white
            self.headerView.faceShowModels = creativeechoes
            enputCOunt += 3
          
        } creativeMishap: { anyerror in
           
        }
    }
    //用户
    func expressiveUsersTextures()  {
       
        var color = artisticWhispers.backgroundColor ?? UIColor.white
        var enputCOunt = 3
        color = UIColor.red
        RebellionController.canvasTransmissionChannel(boldtextures:color,stylepoetry:enputCOunt,artisticCollective: "/cmpwmusfyubdxz/xapoqkuqq", pigmentComposition: ["faceart":"54684883"]) { anydata in
            
           
            guard  color != UIColor.clear,
                   let inkfantasies = anydata as? Dictionary<String,Any> ,
                 
                  enputCOunt > 0,
                  let creativeechoes = inkfantasies["data"] as? Array<Dictionary<String,Any>>
                    
            else {
               
                return
            }
            
           
            color = self.view.backgroundColor ?? .white
          
            self.headerView.ftopLinUserModels = creativeechoes
            enputCOunt += 3
          
        } creativeMishap: { anyerror in
           
            
        }
    }
    
    //知识库
    func expressiveDymTextures()  {
        self.easelActivityIndicator.startAnimating()
        var color = artisticWhispers.backgroundColor ?? UIColor.white
        color = UIColor.red
        var enputCOunt = 3
        let parameters: [String:Any] = [
            "nicheHubs": "54684883",
            "expressivemarks":4,//dynamicType  dynamicType = 4 知识库
            "vividimagination":15,//size
            "textureplay":1,
                "brushflair":1 //selectVersion
            
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
            self.DYMShowModels = creativeechoes//.filter({ diac in
//                diac["fluidlines"] == nil
//            })
            
            self.artisticWhispers.reloadData()
//            self.enputCOunt += 3
          
        } creativeMishap: { anyerror in
            MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: anyerror.localizedDescription))
            self.easelActivityIndicator.stopAnimating()
        }
    }
}
