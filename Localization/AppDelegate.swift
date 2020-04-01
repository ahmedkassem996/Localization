//
//  AppDelegate.swift
//  Localization
//
//  Created by AHMED on 1/13/1399 AP.
//  Copyright © 1399 AHMED. All rights reserved.
//

import UIKit
import MOLH

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, MOLHResetable {



  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    MOLHFont.shared.arabic = UIFont(name: "Courier", size: 13)!
    MOLHLanguage.setDefaultLanguage("ar")
    MOLH.shared.activate(true)
    MOLH.shared.specialKeyWords = ["Cancel","Done"]
    
    
    return true
  }

  // MARK: UISceneSession Lifecycle

  func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
  }

  func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
  }
  
  func reset() {
    guard let window =  UIApplication.shared.keyWindow else { fatalError() }
      let stry = UIStoryboard(name: "Main", bundle: nil)
      window.rootViewController =
        stry.instantiateViewController(withIdentifier: "ViewController") as! ViewController
  }

}

extension String {
  var localized: String {
    return NSLocalizedString(self, comment: "")
  }
}

