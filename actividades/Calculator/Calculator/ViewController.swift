//
//  ViewController.swift
//  Calculator
//
//  Created by DelaRosa Fernando on 18/08/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var result: UILabel!
    
    //10 -> dot
    @IBAction func tagButton(_ sender: UIButton) {
        switch sender.tag {
        case 10:
            result.text = "."
        default:
            result.text = String(sender.tag)
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

