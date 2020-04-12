//
//  ClosurePropertyViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Ben Chatelain on 4/12/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

@testable import HardDependencies
import XCTest

class ClosurePropertyViewControllerTests: XCTestCase {

    func test_viewDidAppear() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut = storyboard.instantiateViewController(identifier: "ClosurePropertyViewController")
            as! ClosurePropertyViewController
        // Overwrite default closure before property access
        sut.makeAnalytics = { Analytics() }
        sut.loadViewIfNeeded()

        sut.viewDidAppear(false)

        // Normally, assert something
    }
}
