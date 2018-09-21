//
//  MenuItemDetailViewController.swift
//  Restaurant
//
//  Created by Fernando De La Rosa on 19/09/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

class MenuItemDetailViewController: UIViewController {
    
    var menuItem: MenuItem!
    var delegate: AddToOrderDelegate?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var addToOrderButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        setUpDelegate()
        // Do any additional setup after loading the view.
    }

    func updateUI(){
        titleLabel.text = menuItem.name
        priceLabel.text = String(format: "$%.2f", menuItem.price)
        descriptionLabel.text = menuItem.description
        addToOrderButton.layer.cornerRadius = 5.0
        MenuController.shared.fetchImage(url: menuItem.imageURL) { (image) in
            guard let image = image else { return }
            
            DispatchQueue.main.async {
                self.imageView.image = image
            }
        }
    }
    
    func setUpDelegate() {
        if let navController = tabBarController?.viewControllers?.last as? UINavigationController,
            let orderTableViewController = navController.viewControllers.first as? OrderTableViewController {
            delegate = orderTableViewController
        }
    }
    
    @IBAction func orderButtonTaped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3){
            self.addToOrderButton.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
            self.addToOrderButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
    }
}

protocol AddToOrderDelegate {
    func added(menuItem: MenuItem)
}
