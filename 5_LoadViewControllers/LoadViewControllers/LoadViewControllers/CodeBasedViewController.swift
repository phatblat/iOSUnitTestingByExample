//
//  CodeBasedViewController.swift
//  LoadViewControllers
//
//  Created by Ben Chatelain on 4/5/20.
//  Copyright © 2020 Ben Chatelain. All rights reserved.
//

import UIKit

class CodeBasedViewController: UIViewController {
    private(set) var data: String

    init(data: String) {
        self.data = data
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print(">> create views here")
    }
}
