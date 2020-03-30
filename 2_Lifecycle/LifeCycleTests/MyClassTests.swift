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
    func test_methodOne() {
        let sut = MyClass()

        sut.methodOne()

        // Normally, assert something
    }

    func test_methodTwo() {
        let sut = MyClass()

        sut.methodTwo()

        // Normally, assert something
    }
}
