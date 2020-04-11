//
//  MySingletonAnalytics.swift
//  HardDependencies
//
//  Created by Ben Chatelain on 4/11/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

class MySingletonAnalytics {
    static let shared = MySingletonAnalytics()

    func track(event: String) {
        Analytics.shared.track(event: event)

        if self !== MySingletonAnalytics.shared {
            print(">> Not the MySingletonAnalytics singleton")
        }
    }
}
