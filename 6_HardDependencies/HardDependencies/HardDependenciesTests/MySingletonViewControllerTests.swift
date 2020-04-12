//
//  MySingletonViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Ben Chatelain on 4/11/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

@testable import HardDependencies
import XCTest

class MySingletonViewControllerTests: XCTestCase {

    override func setUp() {
        super.setUp()
        MySingletonAnalytics.stubbedInstance = MySingletonAnalytics()
    }

    override class func tearDown() {
        MySingletonAnalytics.stubbedInstance = nil
        super.tearDown()
    }

    func test_viewDidAppear() {
        let sut = MySingletonViewController()
        sut.loadViewIfNeeded()

        sut.viewDidAppear(false)

        // Normally, assert something
    }
}
