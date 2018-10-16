//
//  AppDelegate.swift
//  Photos
//
//  Created by DelaRosa Fernando on 05/10/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //MARK: Navigation bar color
        UINavigationBar.appearance().barTintColor = UIColor(red:0.91, green:0.30, blue:0.24, alpha:1.0)
        //Para que las tras sean blancas
        UINavigationBar.appearance().barStyle = .black
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        
    }

    func applicationWillTerminate(_ application: UIApplication) {
        
    }


}

