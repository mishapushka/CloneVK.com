//
//  AppDelegate.swift
//  CloneVK.com
//
//  Created by Mikhail Pushkarev on 02.01.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window?.rootViewController = MainTabBarController.createTabBarController()
        window?.makeKeyAndVisible()

        return true
    }
}

