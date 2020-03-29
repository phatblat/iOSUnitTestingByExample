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

    func test_assertNil() {
        let optionaValue: Int? = 123
        XCTAssertNil(optionaValue)
    }

    struct SimpleStruct {
        let x: Int
        let y: Int
    }
    func test_assertNil_withSimpleStruct() {
        let optionaValue: SimpleStruct? = SimpleStruct(x: 1, y: 2)
        XCTAssertNil(optionaValue)
    }

    struct StructWithDescription: CustomStringConvertible {
        let x: Int
        let y: Int

        var description: String {
            return "(\(x), \(y))"
        }
    }
    func test_assertNil_withSelfDescribingType() {
        let optionaValue: StructWithDescription? = StructWithDescription(x: 1, y: 2)
        XCTAssertNil(optionaValue)
    }

    func test_assertEqual() {
        let actual = "actual"
        XCTAssertEqual(actual, "expected")
    }

    func test_assertEqual_withOptional() {
        let result: String? = "foo"
        XCTAssertEqual(result, "bar")
    }

    func test_floatingPointDanger() {
        let result = 0.1 + 0.2
        XCTAssertEqual(result, 0.3)
    }

    func test_floatingPointFixed() {
        let result = 0.1 + 0.2
        XCTAssertEqual(result, 0.3, accuracy: 0.00017)
    }

    func test_messageOverKill() {
        let actual = "actual"
        XCTAssertEqual(actual, "expected",
                       "Exptected \"expected\" but got \"\(actual)\'")
    }
}
