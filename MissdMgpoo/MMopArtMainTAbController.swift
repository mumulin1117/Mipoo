//
//  MMopArtMainTAbController.swift
//  MissdMgpoo
//
//  Created by mumu on 2025/5/20.
//

import UIKit

class MMopArtMainTAbController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        prepareCreativeWorkspace()
        configureArtisticPortals()
    }
    
    private func prepareCreativeWorkspace() {
           // 画布背景配置
           
        let canvasTexture = UITabBarAppearance()
          
           
        canvasTexture.backgroundColor = UIColor.black
           
        tabBar.standardAppearance = canvasTexture
        tabBar.scrollEdgeAppearance = canvasTexture
        tabBar.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        tabBar.unselectedItemTintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
          
    }
 
    private func configureArtisticPortals() {
        // 1. 创意画廊
        let galleryStudio = MMopFaceGalleryViewController()
        let galleryPortal = createArtisticPortal(
            controller: galleryStudio,
            
            image: UIImage(named: "FaceGallery"),
            selectedImage: UIImage(named: "FaceGallerycai")
        )
        
        // 2. 颜料实验室
        let pigmentLab = MMopPigmentLabController()
        let labPortal = createArtisticPortal(
            controller: pigmentLab,
            
            image: UIImage(named: "FaceGallery1"),
            selectedImage: UIImage(named: "FaceGallery1cai")
        )
        
        // 3. 艺术家社区
        let artistColony = MMopArtistColonyController()
        let colonyPortal = createArtisticPortal(
            controller: artistColony,
            
            image: UIImage(named: "FaceGallery2"),
            selectedImage: UIImage(named: "FaceGallery2cai")
        )
        
        // 4. 我的调色盘
        let myPalette = MMopPersonalPaletteController()
        let palettePortal = createArtisticPortal(
            controller: myPalette,
            
            image: UIImage(named: "FaceGallery3"),
            selectedImage: UIImage(named: "FaceGallery3cai")
        )
        
        viewControllers = [galleryPortal, labPortal, colonyPortal, palettePortal]
        
        
        self.tabBar.addSpringAnimation()
        
    }
    
    private func createArtisticPortal(controller: UIViewController,
                                        
                                        image: UIImage?,
                                        selectedImage: UIImage?) -> UIViewController {
            let portal = UINavigationController(rootViewController: controller)
            portal.tabBarItem = UITabBarItem(
                title: nil,
                image: image?.withRenderingMode(.alwaysOriginal),
                selectedImage:selectedImage?.withRenderingMode(.alwaysOriginal)
            )
            
            // 添加笔触动画
       
            return portal
        }

    
    
}
private extension UITabBar {
    func addSpringAnimation() {
        let spring = CASpringAnimation(keyPath: "transform.scale")
        spring.damping = 10
        spring.fromValue = 0.95
        spring.toValue = 1.0
        spring.duration = 0.5
        self.layer.add(spring, forKey: "nil")
    }
}
