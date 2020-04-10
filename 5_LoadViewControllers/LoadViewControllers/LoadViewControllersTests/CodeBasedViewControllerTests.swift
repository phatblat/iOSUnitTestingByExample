//
//  CodeBasedViewControllerTests.swift
//  LoadViewControllersTests
//
//  Created by Ben Chatelain on 4/5/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

@testable import LoadViewControllers
import XCTest

class CodeBasedViewControllerTests: XCTestCase {
    func test_loading() {
        let sut = CodeBasedViewController(data: "DUMMY")
        sut.loadViewIfNeeded()

        XCTAssertNotNil(sut.data)
    }
}
