//
//  ClosurePropertyViewController.swift
//  HardDependencies
//
//  Created by Ben Chatelain on 4/11/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

import UIKit

class ClosurePropertyViewController: UIViewController {

    var makeAnalytics: () -> Analytics = {
        return Analytics.shared
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

       makeAnalytics().track(event: "viewDidAppear - \(type(of: self))")
    }
}
