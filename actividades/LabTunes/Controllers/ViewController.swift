//
//  ViewController.swift
//  LabTunes
//
//  Created by Alexis Celestino Solís on 11/9/18.
//  Copyright © 2018 Alexis Celestino Solís. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBAction func loginButton(_ sender: UIButton) {
        guard let userName = userField.text else{ return }
        guard let password = passwordField.text else { return }
        if User.login(userName: userName, password: password){
            performSegue(withIdentifier: "login", sender: self)
        }else{
            //Alert
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

