//
//  LoginViewController.swift
//  MVCApp
//
//  Created by DelaRosa Fernando on 12/10/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func loadView() {
        let loginView = Bundle.main.loadNibNamed("LoginCustomView", owner: nil, options: nil)! [0] as! LoginView
        view = loginView
    }
}
