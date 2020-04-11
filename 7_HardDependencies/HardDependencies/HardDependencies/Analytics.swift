//
//  Analytics.swift
//  HardDependencies
//
//  Created by Ben Chatelain on 4/11/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

class Analytics {
    static let shared = Analytics()

    func track(event: String) {
        print(">> " + event)

        if self !== Analytics.shared {
            print(">> ...Not the Analytics singleton")
        }
    }
}
