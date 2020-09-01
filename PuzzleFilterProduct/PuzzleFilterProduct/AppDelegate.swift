//
//  AppDelegate.swift
//  PuzzleFilterProduct
//
//  Created by diantu on 2020/9/1.
//  Copyright © 2020 diantus. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
            setupDefaultData()
            setupRootVC()
            return true
        }
        func setupRootVC(){
            let wind = UIWindow(frame: UIScreen.main.bounds)
            let vc = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "ViewControllerID")
            window = wind
            wind.rootViewController = PFBaseNavigationController(rootViewController: vc)
            wind.makeKeyAndVisible()
        }
        func setupDefaultData() {
            if UserDefaults.standard.string(forKey: kIAPDefaultGoldNumber) == nil {
                UserDefaults.standard.setValue("3000", forKey: kIAPDefaultGoldNumber)
            }
        }
}

