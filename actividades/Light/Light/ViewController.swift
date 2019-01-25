//
//  ViewController.swift
//  Light
//
//  Created by DelaRosa Fernando on 17/08/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var bul: Bool = true
    
    @IBOutlet weak var lightO: UIButton!
    @IBAction func light(_ sender: UIButton) {
        if bul {
            view.backgroundColor = UIColor.white
            bul = false
        }
        else if !bul {
            view.backgroundColor = UIColor.black
            bul = true
        }
    }
    
    //MARK: Test
    //así se ponen marcas para acceder más fácil a ellas
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lightO.translatesAutoresizingMaskIntoConstraints = false
        lightO.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lightO.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

