//
//  InstanceInitializerViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Ben Chatelain on 4/11/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

@testable import HardDependencies
import XCTest

class InstanceInitializerViewControllerTests: XCTestCase {

    func test_viewDidAppear() {
        let sut = InstanceInitializerViewController(analytics: Analytics())
        sut.loadViewIfNeeded()

        sut.viewDidAppear(false)

        // Normally, assert something
    }
}
