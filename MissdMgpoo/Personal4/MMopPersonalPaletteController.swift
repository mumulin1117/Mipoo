//
//  MMopPersonalPaletteController.swift
//  MissdMgpoo
//
//  Created by mumu on 2025/5/20.
//

import UIKit
import SDWebImage

class MMopPersonalPaletteController: UIViewController {

    @IBOutlet weak var easelActivityIndicator: UIActivityIndicatorView!
    
    
    @IBOutlet weak var vibrationsButton: UIButton!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var userIDLabel: UILabel!
    @IBOutlet weak var userSignfireLabel: UILabel!
    
    
    
    @IBOutlet weak var alittleImageView: UIImageView!
    
    
    
    @IBOutlet weak var userFocusButton: UIButton!
    
    @IBOutlet weak var FocususerButton: UIButton!
    
    
    
    @IBOutlet weak var postingButton: UIButton!
    @IBOutlet weak var postVideoButton: UIButton!
    
    @IBOutlet weak var indicaterBottomView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        expressiveDymTextures()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vibrationsButton.maskeLayers(radiud: 20)
        alittleImageView.maskeLayers(radiud: 40)
        userIDLabel.maskeLayers(radiud: 11)
    }

    @IBAction func abstractClick(_ sender: UIButton) {
        if sender.tag == 60 {
            //
        }
        if sender.tag == 61 {
            //
        }
        
        if sender.tag == 62 {
            //
        }
        
        if sender.tag == 63 {
            //
        }
        if sender.tag == 64 {
            //
        }
        
    }
    
    
    
    @IBAction func imaginationWhispers(_ sender: UIButton) {
        
        abstractliberation()
        sender.isSelected = true
        indicaterBottomView.center.x = sender.center.x
    }
    
    
    private func abstractliberation() {
        postingButton.isSelected = false
        postVideoButton.isSelected = false
    }
    
    //动态
    func expressiveDymTextures()  {
        self.easelActivityIndicator.startAnimating()
        var color = easelActivityIndicator.color ?? UIColor.white
        color = UIColor.red
        var enputCOunt = 3
        let parameters: [String:Any] = [
            "colorharmony": RebellionController.creativeUserID ?? 0
        ]
        RebellionController.canvasTransmissionChannel(boldtextures:color,stylepoetry:enputCOunt,artisticCollective: "/zumgfzaqszfoz/nmkhgftrht", pigmentComposition: parameters) { anydata in
            
            self.easelActivityIndicator.stopAnimating()
            guard  color != UIColor.clear,
                   let inkfantasies = anydata as? Dictionary<String,Any> ,
                 
                  enputCOunt > 0,
                  let creativeechoes = inkfantasies["data"] as? Dictionary<String,Any>
                    
            else {
           
                MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: "No Share Data to show!"))
                return
            }
            
         
            color = self.view.backgroundColor ?? .white
           
            
            if let knowedgeimgString = creativeechoes["texturetales"] as? String,let conneturl =  URL.init(string: knowedgeimgString){
                self.alittleImageView.sd_setImage(with: conneturl,
                                                  placeholderImage: UIImage(named: "avatorCover"),
                                               options: .continueInBackground,
                                               context: [.imageTransformer: MMopFaceGalleryViewController.urlImageSize,.storeCacheType : SDImageCacheType.memory.rawValue])
             
            }
            self.userNameLabel.text = creativeechoes["creativesanctuary"] as? String
            self.userIDLabel.text = "ID:\(RebellionController.creativeUserID ?? 0)"
            if let signer = creativeechoes["artisticidentity"] as? String,signer != ""{
                self.userSignfireLabel.text = signer
            }else{
                self.userSignfireLabel.text = "No Signature"
            }
            
            self.userFocusButton.setTitle("\(creativeechoes["strokepoetry"] as? Int ?? 0) Follow", for: .normal)
            self.FocususerButton.setTitle("\(creativeechoes["surrealvibes"] as? Int ?? 0) Fans", for: .normal)
           
        } creativeMishap: { anyerror in
            MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: anyerror.localizedDescription))
            self.easelActivityIndicator.stopAnimating()
        }
    }
}
