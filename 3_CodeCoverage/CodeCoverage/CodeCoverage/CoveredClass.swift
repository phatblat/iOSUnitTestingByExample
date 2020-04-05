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
}
