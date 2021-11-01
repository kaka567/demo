//
//  AppDelegate.swift
//  flutter_boost_ios
//
//  Created by liwenhao08 on 2021/9/18.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let nav = UINavigationController(rootViewController: ViewController())
        
        //创建代理，做初始化操作
        let delegate = BoostDelegate()
        
        delegate.navigationController = nav
        FlutterBoost.instance().setup(application, delegate: delegate) { engine in
            
        }
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = nav
        self.window?.makeKeyAndVisible()
        return true
    }

}

