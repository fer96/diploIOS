//
//  ViewController.swift
//  MonthProject
//
//  Created by DelaRosa Fernando on 11/30/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pageViewControlelr: UIPageViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.pageViewControlelr = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
        let startingViewController: DataViewController = self.modelController.viewControllerAtIndex(0, storyboard: self.storyboard!)!
        let viewControllers = [startingViewController]
        self.pageViewControlelr?.setViewControllers(viewControllers, direction: .forward, animated: false, completion: { done in })
        self.pageViewControlelr?.dataSource = self.modelController
        self.addChild(self.pageViewControlelr!)
        self.view.addSubview(self.pageViewControlelr!.view)
        self.pageViewControlelr!.didMove(toParent: self)
    }
    
    lazy var modelController = ModelController()
    
//    var _modelController: ModelController? = nil
//    var modelController: ModelController{
//        if _modelController ==  nil{
//            _modelController = ModelController()
//        }
//        return _modelController!
//    }
}

