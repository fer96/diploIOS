//
//  SecondViewController.swift
//  iTunesTable
//
//  Created by DelaRosa Fernando on 01/09/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var etiqueta: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var fromFirstView: String = ""
    var imageFromFirstView: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        etiqueta.text = fromFirstView
        image.image = UIImage(imageLiteralResourceName: imageFromFirstView)
    }

    //cambiar esto
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
