//
//  BaseTabBarVC.swift
//  iMarvel
//
//  Created by Levy Henrique on 5/15/21.
//

import UIKit

class BaseTabBarVC : UITabBarController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hojeVC = self.criarTabItem(viewController: UIViewController(), title: "Hoje", image: "icone-hoje")
        
        let appsVC = self.criarTabItem(viewController: UIViewController(), title: "Apps", image: "icone-apps")
        
        let buscaVC = self.criarTabItem(viewController: BuscaVC(), title: "Search Characters", image: "icone-busca")
        
        viewControllers = [
            hojeVC,
            appsVC,
            buscaVC
        ]
        
        selectedIndex = 2
        
    }
    
    func criarTabItem(viewController: UIViewController, title: String, image: String) -> UIViewController{
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        
        viewController.navigationItem.title = title
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = UIImage(named: image)
        navController.view.backgroundColor = .white
        
        return navController
    }
    
}



