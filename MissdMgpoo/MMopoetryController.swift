//
//  MMopoetryController.swift
//  MissdMgpoo
//
//  Created by MissdMgpoo on 2025/5/19.
//

import UIKit

class MMopoetryController: UIViewController {

    // MARK: - Public/outlet-like properties (preserve names so external callers remain unchanged)
    lazy var coloDismins: UIButton = {
        let btn = UIButton(type: .custom)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.isHidden = true
        btn.widthAnchor.constraint(equalToConstant: 35).isActive = true
        btn.heightAnchor.constraint(equalToConstant: 33).isActive = true
        btn.setBackgroundImage(UIImage(named: "MMOPSDCloseuiClof"), for: .normal)
        btn.addTarget(self, action: #selector(dismissNowingPage(_:)), for: .touchUpInside)
        return btn
    }()

    lazy var ShnigTextView: UITextView = {
        let tv = UITextView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.isHidden = true
        tv.isEditable = false
        tv.backgroundColor = .white
      
        tv.font = UIFont.systemFont(ofSize: 15)
        tv.textColor = .black
        // the xib contained a large block of text for terms
        tv.text = """
Mipoo User Terms
Last Updated: May 10, 2025

Contact: Mipoo@gmail.com
By using Mipoo, you agree to:
1.Account Responsibility: You are liable for activity under your account. Impersonation or fake accounts are prohibited.
2.Content Standards:Upload only original face graffiti designs or legally licensed materials.No content promoting self-harm, harassment, or explicit material.
3.MMOPSDCommunity Conduct:Respect other users. Bullying, hate speech, or spam will result in account suspension.Report violations via Mipoo@gmail.com.
4.Intellectual Property:Mipoo’s trademarks, logos, and interface designs are proprietary. Unauthorized use is prohibited.Infringing content will be removed promptly upon notice.
5.Termination: Mipoo may suspend accounts for breaches of these terms. Repeated violations lead to permanent bans.
6.Disclaimer: Mipoo is not responsible for third-party content or offline interactions between users.
7.Governing Law: Disputes shall be resolved under the laws of [Your Jurisdiction], excluding conflict-of-law principles.
8.License Grant: Mipoo grants you a non-exclusive, revocable license to use the App solely for creating, sharing, and viewing face graffiti designs and related content.
9.User Restrictions:You may not upload content that violates intellectual property rights, promotes hate speech, or depicts illegal activities.Reverse engineering, modifying, or distributing App code without explicit permission is prohibited.
10.Content Ownership: You retain ownership of original face graffiti designs. By uploading content, you grant Mipoo a non-exclusive license to display, store, and technically process it for App functionality.
11.Termination:Mipoo reserves the right to terminate access immediately for violations of this EULA, including harmful behavior or unauthorized commercial use.Accounts inactive for 12+ months may be deactivated.
12.Disclaimer: The App is provided "as is." Mipoo disclaims liability for indirect damages arising from technical errors, content misuse, or third-party actions.
13.Updates: Mipoo may update this EULA periodically. Continued use after updates constitutes acceptance.
"""
        tv.textAlignment = .natural
        tv.isScrollEnabled = true
        return tv
    }()

    lazy var emotionsTecfield: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.textColor = .white
        tf.font = UIFont.systemFont(ofSize: 16)
        tf.autocapitalizationType = .none
        return tf
    }()

    lazy var abstractInputView: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.font = UIFont.systemFont(ofSize: 16)
        tf.autocapitalizationType = .none
        return tf
    }()

    lazy var easelActivityIndicator: UIActivityIndicatorView = {
        let ai = UIActivityIndicatorView(style: .large)
        ai.translatesAutoresizingMaskIntoConstraints = false
        ai.hidesWhenStopped = true
        ai.color = UIColor.systemGreen
        return ai
    }()

    lazy var brushStrokeButton: UIButton = {
        let btn = UIButton(type: .custom)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.widthAnchor.constraint(equalToConstant: 23).isActive = true
        btn.heightAnchor.constraint(equalToConstant: 23).isActive = true
        btn.setBackgroundImage(UIImage(named: "MMOPSnotselCir"), for: .normal)
        btn.setBackgroundImage(UIImage(named: "MMOPSpurpersekl"), for: .selected)
        btn.addTarget(self, action: #selector(showPigmentAlert(_:)), for: .touchUpInside)
        return btn
    }()

    // Additional UI elements present in XIB but not declared as IBOutlets originally.
    private lazy var backgroundImageView: UIImageView = {
        let iv = UIImageView(image: UIImage(named: "MMOPSDfacemake"))
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        return iv
    }()

    private lazy var maskLayerImageView: UIImageView = {
        let iv = UIImageView(image: UIImage(named: "MMOPSDmasklayerface"))
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleToFill
        return iv
    }()

    private lazy var inputBack1: UIImageView = {
        let iv = UIImageView(image: UIImage(named: "MMOPSDgrayINputBack"))
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleToFill
        return iv
    }()

    private lazy var inputBack2: UIImageView = {
        let iv = UIImageView(image: UIImage(named: "MMOPSDgrayINputBack"))
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleToFill
        return iv
    }()

    private lazy var emailIcon: UIImageView = {
        let iv = UIImageView(image: UIImage(named: "MIPooemail"))
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFit
        return iv
    }()

    private lazy var passIcon: UIImageView = {
        let iv = UIImageView(image: UIImage(named: "MIPoopasw"))
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFit
        return iv
    }()

    private lazy var welcomeLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Welcome!"
        lbl.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        lbl.textColor = .white
        lbl.textAlignment = .center
        return lbl
    }()

    private lazy var centerIcon: UIImageView = {
        let iv = UIImageView(image: UIImage(named: "MMOPSpageioncone"))
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFit
        return iv
    }()

    private lazy var infoLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "If the account does not exist, we will automatically create one for you"
        lbl.numberOfLines = 2
        lbl.font = UIFont.systemFont(ofSize: 12)
        lbl.textColor = UIColor(white: 0.6666666667, alpha: 1)
        lbl.textAlignment = .center
        return lbl
    }()

    private lazy var signInButton: UIButton = {
        let btn = UIButton(type: .custom)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Sign in now", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        btn.setBackgroundImage(UIImage(named: "MMOPSDcaihBack"), for: .normal)
        btn.setTitleColor(UIColor.label, for: .normal)
        btn.addTarget(self, action: #selector(transitionToGallery(_:)), for: .touchUpInside)
        return btn
    }()

    private lazy var tosButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.tag = 124
        btn.setTitle("<Terms of Service>", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        btn.addTarget(self, action: #selector(dynamicillusions(_:)), for: .touchUpInside)
        return btn
    }()

    private lazy var privacyButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.tag = 125
        btn.setTitle("<Privacy Policy>", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        btn.addTarget(self, action: #selector(dynamicillusions(_:)), for: .touchUpInside)
        return btn
    }()

    private lazy var agreeLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "By continuing you agree to our"
        lbl.font = UIFont.systemFont(ofSize: 12)
        lbl.textColor = UIColor(white: 0.6666666667, alpha: 1)
        return lbl
    }()

    // MARK: - Other stored properties from original file
    var indexPageType: Int?
    init(indexPageType: Int? = nil) {
        self.indexPageType = indexPageType
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    struct ArtistAnalytics {
        let pigmentAttempts: Int
        let canvasSwipeGestures: Int
        let colorVibrationTriggers: Int
    }

    var tapger: ArtistAnalytics?

    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Keep original observers & logic from previous implementation
        NotificationCenter.default.addObserver(self, selector: #selector(setPlaceholderNoledr(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)

        if indexPageType != nil {
            
            ShnigTextView.textColor = .black
            ShnigTextView.contentInset = UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 20)
            ShnigTextView.layer.cornerRadius = 20
            ShnigTextView.layer.masksToBounds = true
            self.ShnigTextView.isHidden = false
            self.coloDismins.isHidden = false
            if indexPageType == 125 {
                ShnigTextView.text = """
Mipoo Privacy Policy

Last Updated: May 10, 2025

Contact: Mipoo@gmail.com

Mipoo values your privacy. This policy outlines data practices:

Data Collected:
Account Information: Username, email (optional), and profile details.
User Content: Face graffiti designs, style videos, and public interactions.
Technical Data: Device type, OS version, and usage patterns (e.g., feature engagement).
Purpose: Data is used to personalize creative tools, improve App performance, and enforce MMOPSDCommunity guidelines.

Sharing: Data is never sold. Limited sharing occurs with trusted third-party vendors (e.g., cloud storage providers) solely for App operations.

Security: Industry-standard encryption and access controls protect your data.

Retention: User content is stored until deletion by you or account termination. Technical logs are retained for 90 days.

Rights: You may request access, correction, or deletion of personal data via Mipoo@gmail.com.

Children: The App is not intended for users under 13. Accounts suspected of underage use will be terminated.

"""
            }
            // when presented as privacy/terms, we don't build rest of UI
            buildMinimalTermsUI()
            return
        }

        // Regular screen: build UI hierarchy and constraints
        tapger = ArtistAnalytics(pigmentAttempts: 30, canvasSwipeGestures: 30, colorVibrationTriggers: 30)
        setPlaceholder(for: emotionsTecfield, text: ArtisticPoetry.MMOPSDextractVibrantPigments(MMOPSDcolorFormula:"Einltwetra zyuowunrd pelmiahiklr eawdzdqrcepsns" ))

        NotificationCenter.default.addObserver(self, selector: #selector(transformOrignal), name: UIResponder.keyboardWillHideNotification, object: nil)

        setPlaceholder(for: abstractInputView, text: ArtisticPoetry.MMOPSDextractVibrantPigments(MMOPSDcolorFormula:"Evndtiebrl mpoamsnsiwuokred" ))

        buildFullUI()
        configureGestureAlchemy()
    }

    // MARK: - UI Building

    private func buildMinimalTermsUI() {
        view.backgroundColor = .systemBackground
        view.addSubview(ShnigTextView)
        view.addSubview(coloDismins)

        NSLayoutConstraint.activate([
            ShnigTextView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 38),
            ShnigTextView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -13),
            ShnigTextView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            ShnigTextView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),

            coloDismins.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 13),
            coloDismins.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15)
        ])
    }

    private func buildFullUI() {
        view.backgroundColor = .systemBackground

        // Add background first
        view.addSubview(backgroundImageView)
        view.addSubview(centerIcon)
        
        view.addSubview(maskLayerImageView)
        view.addSubview(welcomeLabel)
        view.addSubview(inputBack2)
        view.addSubview(emailIcon)
        view.addSubview(emotionsTecfield)

        view.addSubview(inputBack1)
        view.addSubview(passIcon)
        view.addSubview(abstractInputView)

        view.addSubview(signInButton)
        view.addSubview(infoLabel)
        view.addSubview(brushStrokeButton)
        view.addSubview(agreeLabel)
        view.addSubview(privacyButton)
        view.addSubview(tosButton)
        view.addSubview(easelActivityIndicator)
        view.addSubview(coloDismins) // hidden close
        view.addSubview(ShnigTextView) // hidden text view for terms

        // Activate constraints roughly matching XIB layout
        NSLayoutConstraint.activate([
            // Background fills view
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            // Center icon near top center
            centerIcon.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            centerIcon.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            centerIcon.widthAnchor.constraint(equalToConstant: 80),
            centerIcon.heightAnchor.constraint(equalToConstant: 120),

          
            // mask layer below welcome label
            maskLayerImageView.topAnchor.constraint(equalTo: centerIcon.bottomAnchor, constant: 30),
            maskLayerImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 13),
            maskLayerImageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -13),
            maskLayerImageView.heightAnchor.constraint(equalToConstant: 314),

            // Welcome label below icon
            welcomeLabel.topAnchor.constraint(equalTo: maskLayerImageView.topAnchor, constant: 20),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            
            // sign in button overlapping bottom of mask layer (xib had top relative -11)
            signInButton.topAnchor.constraint(equalTo: maskLayerImageView.bottomAnchor, constant: -11),
            signInButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 22),
            signInButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -22),
            signInButton.heightAnchor.constraint(equalToConstant: 52),

            // inputBack2 (email) position
            inputBack2.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 30.33),
            inputBack2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            inputBack2.widthAnchor.constraint(equalToConstant: 315),
            inputBack2.heightAnchor.constraint(equalToConstant: 56),

            emailIcon.leadingAnchor.constraint(equalTo: inputBack2.leadingAnchor, constant: 15),
            emailIcon.centerYAnchor.constraint(equalTo: inputBack2.centerYAnchor),
            emailIcon.widthAnchor.constraint(equalToConstant: 44),
            emailIcon.heightAnchor.constraint(equalToConstant: 44),

            emotionsTecfield.leadingAnchor.constraint(equalTo: emailIcon.trailingAnchor, constant: 8),
            emotionsTecfield.centerYAnchor.constraint(equalTo: emailIcon.centerYAnchor),
            emotionsTecfield.trailingAnchor.constraint(equalTo: inputBack2.trailingAnchor, constant: -8),
            emotionsTecfield.heightAnchor.constraint(equalToConstant: 50),

            // inputBack1 (password) position higher (x 256 y in xib)
            inputBack1.topAnchor.constraint(equalTo: inputBack2.bottomAnchor, constant: 32), // approximate
            inputBack1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            inputBack1.widthAnchor.constraint(equalToConstant: 313),
            inputBack1.heightAnchor.constraint(equalToConstant: 56),

            passIcon.leadingAnchor.constraint(equalTo: inputBack1.leadingAnchor, constant: 15),
            passIcon.centerYAnchor.constraint(equalTo: inputBack1.centerYAnchor),
            passIcon.widthAnchor.constraint(equalToConstant: 44),
            passIcon.heightAnchor.constraint(equalToConstant: 44),

            abstractInputView.leadingAnchor.constraint(equalTo: passIcon.trailingAnchor, constant: 8),
            abstractInputView.centerYAnchor.constraint(equalTo: passIcon.centerYAnchor),
            abstractInputView.trailingAnchor.constraint(equalTo: inputBack1.trailingAnchor, constant: -8),
            abstractInputView.heightAnchor.constraint(equalToConstant: 50),

            // info label below sign in/button area
            infoLabel.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 12),
            infoLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 43),
            infoLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -43),

            // activity indicator center
            easelActivityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            easelActivityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            easelActivityIndicator.widthAnchor.constraint(equalToConstant: 58),
            easelActivityIndicator.heightAnchor.constraint(equalToConstant: 58),

            // brush button bottom-left like xib
            brushStrokeButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            brushStrokeButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -26),

            agreeLabel.leadingAnchor.constraint(equalTo: brushStrokeButton.trailingAnchor, constant: 8),
            agreeLabel.centerYAnchor.constraint(equalTo: brushStrokeButton.centerYAnchor),

            privacyButton.leadingAnchor.constraint(equalTo: agreeLabel.trailingAnchor),
            privacyButton.centerYAnchor.constraint(equalTo: agreeLabel.centerYAnchor),
            
            tosButton.leadingAnchor.constraint(equalTo: agreeLabel.leadingAnchor),
            tosButton.topAnchor.constraint(equalTo: agreeLabel.bottomAnchor,constant: 4),
            

            // close button (hidden by default)
            coloDismins.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 13),
            coloDismins.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),

            // hidden terms view (for presentation)
            ShnigTextView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 13),
            ShnigTextView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -13),
            ShnigTextView.topAnchor.constraint(equalTo: centerIcon.bottomAnchor, constant: 20),
            ShnigTextView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
        ])

        // Additional small tweaks
        ShnigTextView.isHidden = true
        coloDismins.isHidden = true
    }

    // MARK: - Keyboard handling (copied+preserved)

    @objc func setPlaceholderNoledr(_ notification: Notification) {
        guard
            let userInfo = notification.userInfo,
            let frameValue = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue,
            let duration = userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double,
            let curveValue = userInfo[UIResponder.keyboardAnimationCurveUserInfoKey] as? UInt
        else { return }

        let keyboardFrame = frameValue.cgRectValue
        let keyboardHeight = keyboardFrame.height
        let animationOptions = UIView.AnimationOptions(rawValue: curveValue << 16)

        // 动画同步系统键盘动画
        UIView.animate(withDuration: duration, delay: 0, options: animationOptions, animations: {
            // 调整位置为键盘高度一半（保持原意）
            self.view.transform = CGAffineTransform(translationX: 0, y: -keyboardHeight / 2)
        }, completion: nil)
    }

    @objc func transformOrignal() {
        UIView.animate(withDuration: 0.25) {
            self.view.transform = .identity
        }
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
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

    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Actions (preserve names & signatures)

    @objc func dismissNowingPage(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

    @objc func transitionToGallery(_ sender: UIButton) {
        if tapger?.pigmentAttempts ?? 0 < 2 {
            return
        }
        if !brushStrokeButton.isSelected {

            MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: ArtisticPoetry.MMOPSDextractVibrantPigments(MMOPSDcolorFormula:"ytoyub hnxeoezdj madgwrbebep xtjow bouuzrg cPuroizvqajcvyc hahnndc otrebrtmhsh ralti ffjiarosito!" )))
            return
        }


        guard let contentEmail = emotionsTecfield.text,!contentEmail.isEmpty else{

            MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: ArtisticPoetry.MMOPSDextractVibrantPigments(MMOPSDcolorFormula: "Phlueyadsuec qenndtfehre rap vvxaalxibdd ieumiamiulm galdpdprheosvsl!")))
            return
        }


        guard let contentPasword = abstractInputView.text,!contentPasword.isEmpty else{

            MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.notice(info: ArtisticPoetry.MMOPSDextractVibrantPigments(MMOPSDcolorFormula:"Prljeaayszez dejnutsecrb bam nvxaflkixdl apgacszwroarqdf!" )))
            return
        }

        easelActivityIndicator.startAnimating()
        var color = emotionsTecfield.textColor ?? UIColor.white
        var enputCOunt = emotionsTecfield.text?.count ?? 0

        MMOPSDRebellionController.canvasTransmissionChannel(boldtextures:color,stylepoetry:enputCOunt,artisticCollective: "/ttqaxhmcffzbongz/tbdzgtlrhud", pigmentComposition: ["boldimpressions":contentEmail,
                                                                                                                            "imaginativeflow":contentPasword,
                                                                                                                            "freeformpoetry":"54684883"]) { anydata in

            self.easelActivityIndicator.stopAnimating()
            guard  color != UIColor.clear,
                   let inkfantasies = anydata as? Dictionary<String,Any> ,

                  enputCOunt > 0,
                  let creativeechoes = inkfantasies[ArtisticPoetry.MMOPSDextractVibrantPigments(MMOPSDcolorFormula:"dsastpa" )] as? Dictionary<String,Any>

            else {
                MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.error(info: ArtisticPoetry.MMOPSDextractVibrantPigments(MMOPSDcolorFormula: "Tahxek jeqmyatijlg tourw fpxansesmwtoqrbdf cyroxuj derngtkedrgexdn riasi nignbcyodrhrreicit")))

                return
            }

            let creativeToken = creativeechoes["artisticmuse"] as? String ?? ""
            color = self.abstractInputView.textColor ?? .white
            let creativeUserID =  creativeechoes["faceillusions"] as? Int ?? 0

            MMOPSDRebellionController.setUserLoggedIn(creativeToken: creativeToken, creativeUserID: creativeUserID)
            self.navigationController?.pushViewController(MMopArtMainTAbController(), animated: false)
            enputCOunt += 3


        } creativeMishap: { anyerror in
            MMopArtAlertController.showOn(self, type: MMopArtAlertController.PigmentAlertType.error(info: anyerror.localizedDescription))
            self.easelActivityIndicator.stopAnimating()
        }
    }

    @objc func showPigmentAlert(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }

    @objc func dynamicillusions(_ sender: UIButton) {
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
