//
//  MusicSelectionViewController.swift
//  MVCApp
//
//  Created by DelaRosa Fernando on 12/10/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

class MusicSelectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func loadView(){
        let musicView = Bundle.main.loadNibNamed("MusicSelectionView", owner: nil, options: nil)! [0] as! MusicView
        view = musicView
        //        self.view.addSubview(loginView)
    }
}
