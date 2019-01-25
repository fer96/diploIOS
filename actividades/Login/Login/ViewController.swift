//
//  ViewController.swift
//  Login
//
//  Created by DelaRosa Fernando on 24/08/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let user: String = "fer96"
    let pass: String = "pass123"
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func login(_ sender: UIButton) {
        if user == username.text! && pass == password.text!{
            performSegue(withIdentifier: "successSegue", sender: nil)
        }
        else{
            performSegue(withIdentifier: "errorSegue", sender: nil)
        }
    }
    
    @IBAction func unwindToLogin(unwindSegue: UIStoryboardSegue){
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

