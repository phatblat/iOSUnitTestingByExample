//
//  XIBBasedViewControllerTests.swift
//  LoadViewControllersTests
//
//  Created by Ben Chatelain on 4/5/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

@testable import LoadViewControllers
import XCTest

class XIBBasedViewControllerTests: XCTestCase {
    func test_loading() {
        let sut = XIBBasedViewController()
        sut.loadViewIfNeeded()

        XCTAssertNotNil(sut.label)
    }
}
