//
//  MainTabBarController.swift
//  CloneVK.com
//
//  Created by Mikhail Pushkarev on 02.01.2022.
//

import UIKit

final class MainTabBarController: UITabBarController {
    
    static func createTabBarController() -> UITabBarController {
        let tabBarConroller = UITabBarController()
        
        tabBarConroller.setViewControllers(
            [
                createChildViewController(with: "Первый", backgroundColor: .white, image: nil),
                createChildViewController(with: "Второй", backgroundColor: .white, image: nil),
                createChildViewController(with: "Третий", backgroundColor: .systemBrown, image: nil),
                createChildViewController(with: "Четвертый", backgroundColor: .white, image: nil),
                createChildViewController(with: "Пятый", backgroundColor: .systemGreen, image: nil)
        ]
                                           , animated: false)
        return tabBarConroller
    }
    
    private static func createChildViewController(with title: String,
                                                  backgroundColor: UIColor,
                                                  image: UIImage?) -> UIViewController {
        let viewController = UIViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        viewController.view.backgroundColor = backgroundColor
        viewController.tabBarItem = UITabBarItem(title: title, image: image, selectedImage: nil)
        viewController.title = title
        
        return navigationController
    }
}
