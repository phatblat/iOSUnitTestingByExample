//
//  AssertYourselfTests.swift
//  AssertYourselfTests
//
//  Created by Ben Chatelain on 3/29/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

@testable import AssertYourself
import XCTest

class AssertYourselfTests: XCTestCase {
    func test_fail() {
        XCTFail()
    }

    func test_fail_withSimpleMessage() {
        XCTFail("We have a problem")
    }

    func test_fail_withInterpolatedMessage() {
        let theAnswer = 42
        XCTFail("The Answer to the Great Question is \(theAnswer)")
    }

    func test_avoidConditionalCode() {
        let success = false
        if !success {
            XCTFail()
        }
    }

    func test_assertTrue() {
        let success = false
        XCTAssertTrue(success)
    }
}
