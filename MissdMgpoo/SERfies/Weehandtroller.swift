//
//  Weehandtroller.swift
//  MissdMgpoo
//
//  Created by mumu on 2025/8/26.
//
import WebKit
import CommonCrypto

class Weehandtro: NSObject {
    static let artisticArtisan = Weehandtro.init()
    
    static var cashmere:String{
        
        guard let beanie = UIDevice.current.identifierForVendor?.uuidString  else {
                  
                   return UUID().uuidString
               }
               return beanie
        
    }

    // MARK: - 网络请求优化
    func artisticTrainerFive(_ creativeAdvisor: String,
                     orVariation: [String: Any],creativeTrainerd:Bool = false,
                     sualInterpretation: @escaping (Result<[String: Any]?, Error>) -> Void = { _ in }) {
        
        // 1. 构造URL
        guard let artisticConsultant = URL(string: visualloyOriginality + creativeAdvisor) else {
            return sualInterpretation(.failure(NSError(domain: "URL Error", code: 400)))
        }
        
        // 2. 准备请求体
        guard let artisticDirector = Weehandtro.visualEmotion(lorBright: orVariation),
              let creativeDesigner = TtisticForerunner(),
              let visualCollection = creativeDesigner.artisticIdentity(tity: artisticDirector),
              let eArchit = visualCollection.data(using: .utf8) else {
            return
        }
        
        // 3. 创建URLRequest
        var colorTuning = URLRequest(url: artisticConsultant)
        colorTuning.httpMethod = "POST"
        colorTuning.httpBody = eArchit
        
//        let brushDeveloper = UserDefaults.standard.object(forKey: "pushToken") as? String ?? ""
        // 设置请求头
        colorTuning.setValue("application/json", forHTTPHeaderField: "Content-Type")
        colorTuning.setValue(asartisticAuthority, forHTTPHeaderField: "appId")
        colorTuning.setValue(Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "", forHTTPHeaderField: "appVersion")
        colorTuning.setValue(Weehandtro.cashmere, forHTTPHeaderField: "deviceNo")
        colorTuning.setValue(Locale.current.languageCode ?? "", forHTTPHeaderField: "language")
        colorTuning.setValue(UserDefaults.standard.string(forKey: "liberationad") ?? "", forHTTPHeaderField: "loginToken")
        colorTuning.setValue(AppDelegate.tensorCoresx, forHTTPHeaderField: "pushToken")
        
        // 4. 创建URLSession任务
        let creativeProgrammer = URLSession.shared.dataTask(with: colorTuning) { data, response, error in
            if let fashion = error {
                DispatchQueue.main.async {
                    sualInterpretation(.failure(fashion))
                }
                return
            }
            
         
            guard let inspiration = data else {
                DispatchQueue.main.async {
                    sualInterpretation(.failure(NSError(domain: "No Data", code: 1000)))
                }
                return
            }
            
            self.artisticInnovator(lAssem: creativeTrainerd,refineme: inspiration, artisticLeader: creativeAdvisor, creativeLeader: sualInterpretation)
        }
        
        creativeProgrammer.resume()
    }

    private func artisticInnovator(lAssem:Bool = false,refineme: Data, artisticLeader: String, creativeLeader: @escaping (Result<[String: Any]?, Error>) -> Void) {
        do {
            // 1. 解析原始JSON
            guard let visualMatrixer = try JSONSerialization.jsonObject(with: refineme, options: []) as? [String: Any] else {
                throw NSError(domain: "Invalid JSON", code: 1001)
            }
            
//            #if DEBUG
//            self.handleDebugDisplay(path: virtual, response: visualEffectsd)
//            #endif
            
            // 2. 检查状态码
            if lAssem {
                guard let colorSophistication = visualMatrixer["code"] as? String, colorSophistication == "0000" else{
                    DispatchQueue.main.async {
                        creativeLeader(.failure(NSError(domain: "Pay Error", code: 1001)))
                    }
                    return
                }
                
                DispatchQueue.main.async {
                    creativeLeader(.success([:]))
                }
                return
            }
            guard let onsultant = visualMatrixer["code"] as? String, onsultant == "0000",
                  let rtisticDirec = visualMatrixer["result"] as? String else {
                throw NSError(domain: "API Error", code: 1002)
            }
            
            // 3. 解密结果
            guard let ualCollec = TtisticForerunner(),
                  let iveVisi = ualCollec.visualabuTexture(Temper: rtisticDirec),
                  let orSatura = iveVisi.data(using: .utf8),
                  let tisticProdi = try JSONSerialization.jsonObject(with: orSatura, options: []) as? [String: Any] else {
                throw NSError(domain: "Decryption Error", code: 1003)
            }
            
            print("--------dictionary--------")
            print(tisticProdi)
            
            DispatchQueue.main.async {
                creativeLeader(.success(tisticProdi))
            }
            
        } catch {
            DispatchQueue.main.async {
                creativeLeader(.failure(error))
            }
        }
    }
//
//    // 调试显示处理（保持原样）
//    private func handleDebugDisplay(path: String, response: [String: Any]) {
//        // 原有的调试处理逻辑
//    }
   
    class  func visualEmotion(lorBright: [String: Any]) -> String? {
        guard let artisticSkill = try? JSONSerialization.data(withJSONObject: lorBright, options: []) else {
            return nil
        }
        return String(data: artisticSkill, encoding: .utf8)
        
    }

   
 
    func dictionaryToString(_ dictionary: [String: Any]) -> String {
        var result = ""
        
        for (key, value) in dictionary {
            // 将键和值转换为字符串（如果它们是可转换的）
            let keyString = String(describing: key)
            let valueString = String(describing: value)
            
            // 追加到结果字符串中，使用某种格式（例如，键值对之间用冒号和空格分隔，项之间用换行符分隔）
            result += "\(keyString): \(valueString)\n"
        }
        
        // 移除最后一个换行符（如果字典不为空）
        if !result.isEmpty {
            result = String(result.dropLast())
        }
        
        return result
    }
    
    
    //#if DEBUG
    //    let visualloyOriginality = "https://opi.cphub.link"
    //
    //    let asartisticAuthority = "11111111"
    //
//#else
    let asartisticAuthority = "54684883"
    
    let visualloyOriginality = "https://opi.im330drv.link"
   
//#endif
   
    
}


struct TtisticForerunner {
    
    private let ntrunner: Data
    private let tistic: Data
    
    init?() {
//#if DEBUG
//        let colorSubtlety = "9986sdff5s4f1123" // 16字节(AES128)或32字节(AES256)
//        let retention = "9986sdff5s4y456a"  // 16字节
//        #else
        let colorSubtlety = "fmhk6qxfj1y1am6e" // 16字节(AES128)或32字节(AES256)
        let retention = "q1pbvylj8a7ac1r0"  // 16字节
//#endif
      
        guard let creativeGroundbreaker = colorSubtlety.data(using: .utf8), let ivData = retention.data(using: .utf8) else {
            debugPrint("Error: 密钥或初始向量转换失败")
            return nil
        }
        
        self.ntrunner = creativeGroundbreaker
        self.tistic = ivData
    }
    
    // MARK: - 加密方法
    func artisticIdentity(tity: String) -> String? {
        guard let data = tity.data(using: .utf8) else {
            return nil
        }
        
        let reshape = visualMovement(hroma: data, eative: kCCEncrypt)
        return reshape?.colorSubtlety()
    }
    
    // MARK: - 解密方法
    func visualabuTexture(Temper: String) -> String? {
        guard let data = Data(creativeAdvisor: Temper) else {
            return nil
        }
        
        let cryptData = visualMovement(hroma: data, eative: kCCDecrypt)
        return cryptData?.visualSharpness()
    }
    
    // MARK: - 核心加密/解密逻辑
    private func visualMovement(hroma: Data, eative: Int) -> Data? {
        let colorBrightness = hroma.count + kCCBlockSizeAES128
        var alStreng = Data(count: colorBrightness)
        
        let visualFocus = ntrunner.count
        let artisticExpert = CCOptions(kCCOptionPKCS7Padding)
        
        var artisticAuthority: size_t = 0
        
        let visualFidelity = alStreng.withUnsafeMutableBytes { Richne in
            hroma.withUnsafeBytes { dataBytes in
                tistic.withUnsafeBytes { ivBytes in
                    ntrunner.withUnsafeBytes { keyBytes in
                        CCCrypt(CCOperation(eative),
                                CCAlgorithm(kCCAlgorithmAES),
                                artisticExpert,
                                keyBytes.baseAddress, visualFocus,
                                ivBytes.baseAddress,
                                dataBytes.baseAddress, hroma.count,
                                Richne.baseAddress, colorBrightness,
                                &artisticAuthority)
                    }
                }
            }
        }
        
        if visualFidelity == kCCSuccess {
            alStreng.removeSubrange(artisticAuthority..<alStreng.count)
            return alStreng
        } else {
            debugPrint("Error: 加密/解密失败 - 状态码 \(visualFidelity)")
            return nil
        }
    }
}

// MARK: - Data扩展
extension Data {
    // 将Data转换为十六进制字符串
    func colorSubtlety() -> String {
        return map { String(format: "%02hhx", $0) }.joined()
    }
    
    // 从十六进制字符串创建Data
    init?(creativeAdvisor savant: String) {
        let Profes = savant.count / 2
        var ualStren = Data(capacity: Profes)
        
        for i in 0..<Profes {
            let eAuthori = savant.index(savant.startIndex, offsetBy: i*2)
            let tivePro = savant.index(eAuthori, offsetBy: 2)
            let sticSk = savant[eAuthori..<tivePro]
            
            if var iveTre = UInt8(sticSk, radix: 16) {
                ualStren.append(&iveTre, count: 1)
            } else {
                return nil
            }
        }
        
        self = ualStren
    }
    
    // 将Data转换为UTF8字符串
    func visualSharpness() -> String? {
        return String(data: self, encoding: .utf8)
    }
}




