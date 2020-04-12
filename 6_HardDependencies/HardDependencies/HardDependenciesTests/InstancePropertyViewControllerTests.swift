//
//  InstancePropertyViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Ben Chatelain on 4/12/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

@testable import HardDependencies
import XCTest

class InstancePropertyViewControllerTests: XCTestCase {

    func test_viewDidAppear() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut = storyboard.instantiateViewController(
            withIdentifier: "InstancePropertyViewController")
            as! InstancePropertyViewController
        // Lazy property set before access
        sut.analytics = Analytics()
        sut.loadViewIfNeeded()

        sut.viewDidAppear(false)

        // Normally, assert something
    }
}
