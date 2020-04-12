//
//  OverrideViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Ben Chatelain on 4/11/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

@testable import HardDependencies
import XCTest

/// Test-specific subclass
private class TestableOverrideViewController: OverrideViewController {
    override func analytics() -> Analytics {
        return Analytics()
    }
}

class OverrideViewControllerTests: XCTestCase {

    func test_viewDidAppear() {
        let sut = TestableOverrideViewController()
        sut.loadViewIfNeeded()

        sut.viewDidAppear(false)

        // Normally, assert something
    }
}
