//
//  ViewController.swift
//  ISpy
//
//  Created by Fernando De La Rosa on 30/08/18.
//  Copyright © 2018 Fernando De La Rosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var image: UIImageView!
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return image
    }
    func updateZoomFor(size: CGSize){
        let widthScale = size.width / image.bounds.width
        let heightScale = size.height / image.bounds.height
        let scale = min(widthScale, heightScale)
        scroll.minimumZoomScale = scale
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scroll.delegate = self
        updateZoomFor(size: view.bounds.size)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

