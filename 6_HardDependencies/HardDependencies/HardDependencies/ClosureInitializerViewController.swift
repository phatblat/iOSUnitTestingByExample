//
//  ClosureInitializerViewController.swift
//  HardDependencies
//
//  Created by Ben Chatelain on 4/11/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

import UIKit

class ClosureInitializerViewController: UIViewController {

    private let makeAnalytics: () -> Analytics

    init(makeAnalytics: @escaping () -> Analytics = { return Analytics.shared }) {
        self.makeAnalytics = makeAnalytics
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        makeAnalytics().track(event: "viewDidAppear - \(type(of: self))")
    }
}
