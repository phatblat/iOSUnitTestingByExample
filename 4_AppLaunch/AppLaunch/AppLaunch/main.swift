//
//  main.swift
//  AppLaunch
//
//  Created by Ben Chatelain on 4/5/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

import UIKit

let appDelegateClass: AnyClass =
    NSClassFromString("TestingAppDelegate") ?? AppDelegate.self

UIApplicationMain(
    CommandLine.argc,
    CommandLine.unsafeArgv,
    nil,
    NSStringFromClass(appDelegateClass))
