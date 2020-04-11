//
//  InstanceInitializerViewController.swift
//  HardDependencies
//
//  Created by Ben Chatelain on 4/11/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

import UIKit

class InstanceInitializerViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        Analytics.shared.track(event: "viewDidAppear - \(type(of: self))")
    }
}
