//
//  MySingletonAnalytics.swift
//  HardDependencies
//
//  Created by Ben Chatelain on 4/11/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

class MySingletonAnalytics {
    private static let instance = MySingletonAnalytics()

    #if DEBUG
    static var stubbedInstance: MySingletonAnalytics?
    #endif

    static var shared: MySingletonAnalytics {
        #if DEBUG
        if let stubbedInstance = stubbedInstance {
            return stubbedInstance
        }
        #endif
        return instance
    }

    func track(event: String) {
        Analytics.shared.track(event: event)

        if self !== MySingletonAnalytics.instance {
            print(">> Not the MySingletonAnalytics singleton")
        }
    }
}
