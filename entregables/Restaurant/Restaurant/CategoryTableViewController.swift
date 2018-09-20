//
//  CategoryTableViewController.swift
//  Restaurant
//
//  Created by DelaRosa Fernando on 07/09/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

class CategoryTableViewController: UITableViewController {

    let menuController = MenuController()
    var categories = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuController.fetchCategories{ (categories) in
            if let categories = categories{
                self.updateUI(with: categories)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCellIdentifier", for: indexPath)
        
        configure(cell: cell, forItemAt: indexPath)
        
        return cell
    }
    func configure(cell: UITableViewCell, forItemAt indexPath: IndexPath) {
        let categoryString = categories[indexPath.row]
        cell.textLabel?.text = categoryString.capitalized
    }
    func updateUI(with categories: [String]){
        DispatchQueue.main.sync {
            self.categories = categories
            self.tableView.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MenuSegue" {
            let menuTableViewController = segue.destination as! MenuTableViewController
            let index = tableView.indexPathForSelectedRow!.row
            
            menuTableViewController.category = categories[index]
        }
    }
}
