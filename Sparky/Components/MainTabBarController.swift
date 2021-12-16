//
//  MainTabBarController.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 16/12/21.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareViewControllers()
    }
    
    private func prepareViewControllers() {
        let homeViewController = configureTabBarViewController(controller:  HomeViewController(mode: .leftThunder, navTitle: "Sparky"), title: "Home", imageName: "home")
        let cutsViewController = configureTabBarViewController(controller: CutsViewController(), title: "Cortes", imageName: "home")
        viewControllers = [homeViewController, cutsViewController]
        selectedIndex = 0
    }
    
    private func configureTabBarViewController(controller: UIViewController, title: String, imageName: String) -> UIViewController {
        let navigationController = UINavigationController(rootViewController: controller)
        navigationController.navigationBar.prefersLargeTitles = false
        
    
        controller.tabBarItem.title = title
        controller.tabBarItem.image = UIImage(named: imageName)
        return navigationController
    }
    
}
