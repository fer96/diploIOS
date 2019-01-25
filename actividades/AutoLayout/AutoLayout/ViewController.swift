//
//  ViewController.swift
//  AutoLayout
//
//  Created by DelaRosa Fernando on 11/08/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var texto: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.green
        //La siguiente linea activa los constraints de forma programada
        //texto.translatesAutoresizingMaskIntoConstraints = false
        //Estos constraint sirven para centrar de forma adaptativa
        //texto.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //texto.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

