//
//  HomeViewController.swift
//  MVCApp
//
//  Created by DelaRosa Fernando on 12/10/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let customView = view as? HomeView
        customView?.setFunnyColor()
        
        //Crea vista desde el XIB sin el controller
        //        let loginView = Bundle.main.loadNibNamed("LoginView", owner: nil, options: nil)! [0] as! LoginView
        //        self.view.addSubview(loginView)
        
        if User.hasSesion{
//            let musicSelectionVC = MusicSelectionViewController()
//            self.navigationController?.pushViewController(musicSelectionVC, animated: true)
            performSegue(withIdentifier: "showMusic", sender: self)
        }else{
//            let loginVC = LoginViewController()
//            self.navigationController?.pushViewController(loginVC, animated: true)
            performSegue(withIdentifier: "showLogin", sender: self)
        }
    
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        //loginVC.present(loginVC, animated: true)
    }

//    override func loadView() {
//        let customView = HomeView()
//        customView.setFunnyColor()
//        view = customView
//    }
}
