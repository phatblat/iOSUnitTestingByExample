//
//  CoveredClassTests.swift
//  CodeCoverageTests
//
//  Created by Ben Chatelain on 4/5/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

@testable import CodeCoverage
import XCTest

class CoveredClassTests: XCTestCase {
    func test_max_with1And2_shouldReturnSomething() {
        let result = CoveredClass.max(1, 2)
    }
}
