//
//  ArticleViewController.swift
//  NewYorkTimes
//
//  Created by DelaRosa Fernando on 06/10/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var articleTableView: UITableView!
    var articleArray: [Article]? {
        didSet{
            self.articleTableView.reloadData()
        }
    }
    
    //MARK: Views Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        doArticle()
        //loadFishes()
    }
    
    func setupView(){
        navigationItem.title = "NewYork Times"
        articleTableView.register(UINib(nibName: "ArticleTableViewCell", bundle: nil), forCellReuseIdentifier: "articleCell")
        articleTableView.delegate = self
        articleTableView.dataSource = self
    }
    
    func doArticle(){
        articleTableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Protocols table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articleArray?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "articleCell", for: indexPath) as? ArticleTableViewCell else {return UITableViewCell() }
        
        let article = articleArray?[indexPath.row]
        
        
        //cell.fishTitleLabel.text = fish?.name
        //cell.fishSubtitleLabel.text = fish?.webUrlString
        
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
}
