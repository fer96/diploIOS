//
//  ViewController.swift
//  Componentes
//
//  Created by DelaRosa Fernando on 18/08/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stack: UIStackView!
    
    @IBAction func sliderAction(_ sender: UISlider) {
        changeImage()
    }
    
    func changeImage(){
        if slider.value <= 0.33{
            image.image = UIImage(named: "burning")
        }
        else if slider.value > 0.33 && slider.value <= 0.66{
            image.image = UIImage(named: "kaya")
        }
        else if slider.value > 0.66 && slider.value <= 1.0{
            image.image = UIImage(named: "legend")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stack.translatesAutoresizingMaskIntoConstraints = true //false -> active auto center
        stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stack.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}

