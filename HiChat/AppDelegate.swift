//
//  AppDelegate.swift
//  HiChat
//
//  Created by Mac on 8/20/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow()
        
//        let vc = ChatListVC(nibName: "ChatListVC", bundle: nil)
//        let navvc = UINavigationController(rootViewController: vc)
//        navvc.modalPresentationStyle = .fullScreen
//        window?.rootViewController = navvc
        window?.rootViewController = UINavigationController(rootViewController: RegisterVC(nibName: "RegisterVC", bundle: nil))
        window?.makeKeyAndVisible()
        
        return true
    }


}

