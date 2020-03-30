//
//  MyClass.swift
//  LifeCycle
//
//  Created by Ben Chatelain on 3/29/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

class MyClass {
    private static var allInstances = 0
    private let instance: Int

    init() {
        MyClass.allInstances += 1
        instance = MyClass.allInstances
        print(">> MyClass.init() #\(instance)")
    }

    deinit {
        print(">> MyClass.deinit #\(instance)")
    }

    func methodOne() {
        print(">> methodOne")
    }

    func methodTwo() {
        print(">> methodTwo")
    }
}
