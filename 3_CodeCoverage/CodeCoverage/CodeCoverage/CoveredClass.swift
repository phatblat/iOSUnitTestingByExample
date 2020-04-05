//
//  CoveredClass.swift
//  CodeCoverage
//
//  Created by Ben Chatelain on 4/5/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

import UIKit

class CoveredClass {
    static func max(_ x: Int, _ y: Int) -> Int {
        guard x < y else {
            return x
        }

        return y
    }

    static func commaSeparated(from: Int, to: Int) -> String {
        var result = ""
        for i in from..<to {
            result += "\(i),"
        }
        result += "\(to)"
        return result
    }

    private(set) var area: Int

    var width: Int {
        didSet {
            area = width * width
            let color: UIColor = redOrGreen(for: width)
            drawSquare(width: width, color: color)
        }
    }

    init() {
        area = 0
        width = 0
    }

    private func redOrGreen(for width: Int) -> UIColor {
        return width % 2 == 0 ? .red : .green
    }

    private func drawSquare(width: Int, color: UIColor) {
        // ...
    }
}
