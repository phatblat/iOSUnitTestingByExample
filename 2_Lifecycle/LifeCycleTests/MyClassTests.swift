//
//  MyClassTests.swift
//  LifeCycleTests
//
//  Created by Ben Chatelain on 3/29/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

@testable import LifeCycle
import XCTest

class MyClassTests: XCTestCase {
    private var sut: MyClass!

    override func setUp() {
        super.setUp()
        sut = MyClass()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func test_methodOne() {

        sut.methodOne()

        // Normally, assert something
    }

    func test_methodTwo() {

        sut.methodTwo()

        // Normally, assert something
    }
}
