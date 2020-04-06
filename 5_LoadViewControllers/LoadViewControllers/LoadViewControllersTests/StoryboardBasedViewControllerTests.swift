//
//  StoryboardBasedViewControllerTests.swift
//  LoadViewControllersTests
//
//  Created by Ben Chatelain on 4/5/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

@testable import LoadViewControllers
import XCTest

class StoryboardBasedViewControllerTests: XCTestCase {
    func test_loading() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let className = String(describing: StoryboardBasedViewController.self)
        let rawVC = sb.instantiateViewController(withIdentifier: className)
        rawVC.loadViewIfNeeded()

        guard let sut = rawVC as? StoryboardBasedViewController else {
            XCTFail("Expected \(className), but was \(rawVC)")
            return
        }

        XCTAssertNotNil(sut.label)
    }
}
