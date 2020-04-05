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
}
