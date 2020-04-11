//
//  OverrideViewController.swift
//  HardDependencies
//
//  Created by Ben Chatelain on 4/11/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

import UIKit

class OverrideViewController: UIViewController {

    func analytics() -> Analytics {
        return Analytics.shared
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        analytics().track(event: "viewDidAppear - \(type(of: self))")
    }
}
