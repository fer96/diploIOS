//
//  ViewController.swift
//  Buggy
//
//  Created by DelaRosa Fernando on 12/15/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

enum IteratorsErrors: Error{
    case notEnoughOddNumbers
    case notEnoughEvenNumbers
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
//        print("Method: \(#function) in file: \(#file) line: \(#line) called")
        do {
            try iterateArray()
        }catch {}
        
//        badMethod()
    }
    
    func badMethod(){
        let array = NSMutableArray()
        for i in 0..<10{
            array.insert(i, at: i)
        }
        //Go one too far emptying the array (nothice the range change)
        for _ in 0...10{
            array.removeObject(at: 0)
        }
    }
    
    func iterateArray() throws {
        try [ 1, 2, 3, 4, 5, 6, 7, 8 ].forEach({ (number) in
            if (number % 2 == 0 ){
                throw IteratorsErrors.notEnoughOddNumbers
            }else{
                throw IteratorsErrors.notEnoughEvenNumbers
            }
        })
    }
}

