//
//  MMopoetryController.swift
//  MissdMgpoo
//
//  Created by mumu on 2025/5/19.
//

import UIKit

class MMopoetryController: UIViewController {
    
    
    @IBOutlet weak var coloDismins: UIButton!
    
    @IBOutlet weak var ShnigTextView: UITextView!
    var indexPageType:Int?
    init(indexPageType: Int? = nil) {
      
        self.indexPageType = indexPageType
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func dismissNowingPage(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    
    

    @IBOutlet weak var emotionsTecfield: UITextField!
    struct ArtistAnalytics {
        let pigmentAttempts: Int
        let canvasSwipeGestures: Int
        let colorVibrationTriggers: Int
    }
    
    var tapger:ArtistAnalytics?
    
    @IBOutlet weak var abstractInputView: UITextField!
    
    
    @IBOutlet weak var easelActivityIndicator: UIActivityIndicatorView!
    
    
    @IBOutlet weak var brushStrokeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if indexPageType != nil {
            ShnigTextView.contentInset = UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 20)
            ShnigTextView.layer.cornerRadius = 20
            ShnigTextView.layer.masksToBounds = true
            self.ShnigTextView.isHidden = false
            self.coloDismins.isHidden = false
            if indexPageType ==  125{
                ShnigTextView.text = """
Mipoo Privacy Policy

Last Updated: May 10, 2025

Contact: Mipoo@gmail.com

Mipoo values your privacy. This policy outlines data practices:

Data Collected:
Account Information: Username, email (optional), and profile details.
User Content: Face graffiti designs, style videos, and public interactions.
Technical Data: Device type, OS version, and usage patterns (e.g., feature engagement).
Purpose: Data is used to personalize creative tools, improve App performance, and enforce community guidelines.

Sharing: Data is never sold. Limited sharing occurs with trusted third-party vendors (e.g., cloud storage providers) solely for App operations.

Security: Industry-standard encryption and access controls protect your data.

Retention: User content is stored until deletion by you or account termination. Technical logs are retained for 90 days.

Rights: You may request access, correction, or deletion of personal data via Mipoo@gmail.com.

Children: The App is not intended for users under 13. Accounts suspected of underage use will be terminated.

"""
            }
            return
       
        }
        tapger = ArtistAnalytics.init(pigmentAttempts: 30, canvasSwipeGestures: 30, colorVibrationTriggers: 30)
        setPlaceholder(for: emotionsTecfield, text: "Enter your email address")
        setPlaceholder(for: abstractInputView, text: "Enter password")
    }


    private func setPlaceholder(for textField: UITextField,
                               text: String) {
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.init(white: 0.8, alpha: 1),
            .font: UIFont.systemFont(ofSize: 16, weight: .semibold)
        ]
        
        textField.attributedPlaceholder = NSAttributedString(
            string: text,
            attributes: attributes
        )
     
        textField.tintColor = .white
    }

    private func configureGestureAlchemy() {
            let swipeGesture = UISwipeGestureRecognizer(
                target: self,
                action: #selector(handleCanvasSwipe(_:))
            )
            swipeGesture.direction = .up
            view.addGestureRecognizer(swipeGesture)
       
    }
    @objc private func handleCanvasSwipe(_ gesture: UISwipeGestureRecognizer) {
        guard gesture.state == .ended else { return }
      
        
    }
    
    
    @IBAction func transitionToGallery(_ sender: UIButton) {
        if tapger?.pigmentAttempts ?? 0 < 2 {
            return
        }
        if !brushStrokeButton.isSelected {
        
            MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: "you need agree to our Privacy and terms at first!"))
            return
        }
        
        
        guard let contentEmail = emotionsTecfield.text,!contentEmail.isEmpty else{
        
            MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: "Please enter a valid email address!"))
            return
        }
        
        
        guard let contentPasword = abstractInputView.text,!contentPasword.isEmpty else{
        
            MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: "Please enter a valid pasword!"))
            return
        }
        
        easelActivityIndicator.startAnimating()
        var color = emotionsTecfield.textColor ?? UIColor.white
        var enputCOunt = emotionsTecfield.text?.count ?? 0
        
        RebellionController.canvasTransmissionChannel(boldtextures:color,stylepoetry:enputCOunt,artisticCollective: "/ttqaxhmcffzbongz/tbdzgtlrhud", pigmentComposition: ["boldimpressions":contentEmail,
                                                                                                                                "imaginativeflow":contentPasword,
                                                                                                                                "freeformpoetry":"54684883"]) { anydata in
            
            self.easelActivityIndicator.stopAnimating()
            guard  color != UIColor.clear,
                   let inkfantasies = anydata as? Dictionary<String,Any> ,
                 
                  enputCOunt > 0,
                  let creativeechoes = inkfantasies["data"] as? Dictionary<String,Any>
                    
            else {
                MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.error(info: "The email or password you entered is incorrect"))
               
                return
            }
            
            let creativeToken = creativeechoes["artisticmuse"] as? String ?? ""
            color = self.abstractInputView.textColor ?? .white
            let creativeUserID =  creativeechoes["faceillusions"] as? Int ?? 0
          
            RebellionController.setUserLoggedIn(creativeToken: creativeToken, creativeUserID: creativeUserID)
            self.navigationController?.pushViewController(MMopArtMainTAbController(), animated: false)
            enputCOunt += 3
            MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.success(info: "Welcome,Log in successful!"))
           
        } creativeMishap: { anyerror in
            MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.error(info: anyerror.localizedDescription))
            self.easelActivityIndicator.stopAnimating()
        }

        
        
    }
    
    @IBAction func showPigmentAlert(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func dynamicillusions(_ sender: UIButton) {
        let presnetTerm = MMopoetryController.init(indexPageType: sender.tag)
        presnetTerm.modalPresentationStyle = .fullScreen
        self.present(presnetTerm, animated: true)
    }
}


struct ColorGramValidator {
    enum ValidationResult {
        case vibrantSuccess
        case mutedFailure
    }
    
    func validateCanvasInput(email: String?, pigment: String?,
                           completion: @escaping (ValidationResult) -> Void) {
        
    }
}
