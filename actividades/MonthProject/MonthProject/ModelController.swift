//
//  ModelController.swift
//  MonthProject
//
//  Created by DelaRosa Fernando on 11/30/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

class ModelController: NSObject {
    var pageData: [String] = []
    
    static let sharedInstance = ModelController.self 
    
    override init() {
        super.init()
        //Create the model data
        let dataFormatter = DateFormatter()
        pageData = dataFormatter.monthSymbols
    }
    
    func viewControllerAtIndex (_ index: Int, storyboard: UIStoryboard) -> DataViewController? {
        if (self.pageData.count == 0) || (index >= self.pageData.count){
            return nil
        }
        let dataViewController = storyboard.instantiateViewController(withIdentifier: "DataViewController") as! DataViewController
        dataViewController.dataObject = self.pageData[index]
        return dataViewController
    }
}

extension ModelController: UIPageViewControllerDataSource{
    func indexOfViewController(_ viewController: DataViewController) -> Int{
        return pageData.index(of: viewController.dataObject) ?? NSNotFound
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var index = self.indexOfViewController(viewController as! DataViewController)
        if (index == 0) || (index == NSNotFound){
            return nil
        }
        index -= 1
        return self.viewControllerAtIndex(index, storyboard: viewController.storyboard!)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var index = self.indexOfViewController(viewController as! DataViewController)
        if index == NSNotFound{
            return nil
        }
        index += 1
        if index == self.pageData.count{
            return nil
        }
        return self.viewControllerAtIndex(index, storyboard: viewController.storyboard!)
    }
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return self.pageData.count
    }
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
}
