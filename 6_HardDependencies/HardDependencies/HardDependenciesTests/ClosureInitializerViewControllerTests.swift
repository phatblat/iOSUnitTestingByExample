//
//  ClosureInitializerViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Ben Chatelain on 4/12/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

@testable import HardDependencies
import XCTest

class ClosureInitializerViewControllerTests: XCTestCase {

    func test_viewDidAppear() {
        let sut = ClosureInitializerViewController { Analytics() }
        sut.loadViewIfNeeded()

        sut.viewDidAppear(false)

        // Normally, assert something
    }
}
