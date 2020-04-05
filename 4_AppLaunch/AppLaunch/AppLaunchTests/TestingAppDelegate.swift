//
//  TestingAppDelegate.swift
//  AppLaunchTests
//
//  Created by Ben Chatelain on 4/5/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

import UIKit

@objc(TestingAppDelegate)
class TestingAppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("<< Launching with testing app delegate")
        return true
    }
}
