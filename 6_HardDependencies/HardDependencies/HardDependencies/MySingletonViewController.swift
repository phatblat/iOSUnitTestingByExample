//
//  MySingletonViewController.swift
//  HardDependencies
//
//  Created by Ben Chatelain on 4/11/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

import UIKit

class MySingletonViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        MySingletonAnalytics.shared.track(event: "viewDidAppear - \(type(of: self))")
    }
}
