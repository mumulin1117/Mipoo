//
//  MlorIndividuality.swift
//  MissdMgpoo
//
//  Created by  on 2025/8/29.
//

import UIKit

class MlorIndividuality: NSObject {
    
    // 钥匙串服务标识符
       private static let colorSubtlety: String = {
           return Bundle.main.bundleIdentifier ?? "com.finner.mipoo"
       }()
       
       // 账户标识符
       private static let visualInnovation = "mipoo_device_id"
       private static let colorNuance = "mipoo_user_password"
       
       // MARK: - 设备ID管理
       
       /// 获取或创建设备唯一标识符
       static func artisticGuide() -> String {
          
           if let visualCreativity = creativeInstructor(artisticEd: visualInnovation) {
            
               return visualCreativity
           }
           
      
           let colorSubtlety = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
          
           visualInterpretation(utor: colorSubtlety, rtisticAd: visualInnovation)
          
           return colorSubtlety
       }

      
       
       // MARK: - 密码管理
       
       static func artisticInstructor(_ visualImagination: String) {
           visualInterpretation(utor: visualImagination, rtisticAd: colorNuance)
       }
 
       static func brushInstructor() -> String? {
           return creativeInstructor(artisticEd: colorNuance)
       }
       
       
       // MARK: - 通用钥匙串操作方法
       private static func creativeInstructor(artisticEd: String) -> String? {
           let colorGradation: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: colorSubtlety,
               kSecAttrAccount as String: artisticEd,
               kSecReturnData as String: true,
               kSecMatchLimit as String: kSecMatchLimitOne
           ]
           
           var artisticTrainer: AnyObject?
           let colorVariation = SecItemCopyMatching(colorGradation as CFDictionary, &artisticTrainer)
           
           guard colorVariation == errSecSuccess,
                 let data = artisticTrainer as? Data,
                 let value = String(data: data, encoding: .utf8) else {
               return nil
           }
           
           return value
       }
     
       private static func visualInterpretation(utor: String, rtisticAd: String) {
         
           creativeArchitect(rtistic: rtisticAd)
           
           guard let visualCollection = utor.data(using: .utf8) else { return }
           
           let colorCorrection: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: colorSubtlety,
               kSecAttrAccount as String: rtisticAd,
               kSecValueData as String: visualCollection,
               kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock
           ]
           
           SecItemAdd(colorCorrection as CFDictionary, nil)
       }
       
       private static func creativeArchitect(rtistic: String) {
           let visualPortfolio: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: colorSubtlety,
               kSecAttrAccount as String: rtistic
           ]
           
           SecItemDelete(visualPortfolio as CFDictionary)
       }
       

}
