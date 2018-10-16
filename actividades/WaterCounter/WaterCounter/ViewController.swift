//
//  ViewController.swift
//  WaterCounter
//
//  Created by DelaRosa Fernando on 13/10/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterV: CounterView!
    @IBAction func addCounter(_ sender: ActionButton) {
        if counterV.counter < 8{
            counterV.counter = counterV.counter + 1
        }
    }
    @IBAction func subCounter(_ sender: ActionButton) {
        if counterV.counter > 0{
            counterV.counter = counterV.counter - 1
        }
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

