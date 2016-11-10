//
//  AppDelegate.swift
//  521Travel_ UITabBarController
//
//  Created by youngstar on 16/11/4.
//  Copyright © 2016年 521Travel.com. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    // 创建TabBar数组
    var tabs = ["首页", "个人中心", "更多"]
    var images = ["aa", "bb", "cc"]
    var selectedImages = ["eee", "fff", "ggg"]

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
        
        let home = HomeViewController()
        let HomeNC = UINavigationController.init(rootViewController: home)
        
        // 改变图片 保证图片不失真
        let homeImage = UIImage(named:images[0])?.withRenderingMode(.alwaysOriginal)
        let homeSelectImage = UIImage(named:selectedImages[0])?.withRenderingMode(.alwaysOriginal)
        
        HomeNC.tabBarItem = UITabBarItem.init(title: "首页", image: homeImage, selectedImage: homeSelectImage)
        
        
        let center = CenterViewController()
        let CenterNC = UINavigationController.init(rootViewController: center)
        
        // 改变图片 保证图片不失真
        let centerImage = UIImage(named:images[1])?.withRenderingMode(.alwaysOriginal)
        let centerSelectImage = UIImage(named:selectedImages[1])?.withRenderingMode(.alwaysOriginal)
        
        CenterNC.tabBarItem = UITabBarItem.init(title: "个人中心", image: centerImage, selectedImage: centerSelectImage)
        // 下表数值显示
        CenterNC.tabBarItem.badgeValue = "10"
        
        
        
        let more = MoreViewController()
        let MoreNC = UINavigationController.init(rootViewController: more)
        
        // 改变图片 保证图片不失真
        let moreImage = UIImage(named:images[2])?.withRenderingMode(.alwaysOriginal)
        let moreSelectImage = UIImage(named:selectedImages[2])?.withRenderingMode(.alwaysOriginal)
        
        MoreNC.tabBarItem = UITabBarItem.init(title: "更多", image: moreImage, selectedImage: moreSelectImage)
        
        let navArray = [HomeNC, CenterNC, MoreNC]
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = navArray
        self.window?.rootViewController = tabBarController
        
        
        self.window!.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

