//
//  MusicViewController.swift
//  LabTunes
//
//  Created by DelaRosa Fernando on 11/10/18.
//  Copyright © 2018 Alexis Celestino Solís. All rights reserved.
//

import UIKit

class MusicViewController: UIViewController {

    var songs: [Song] = []
    let searchController = UISearchController(searchResultsController: nil)
    
    @IBOutlet weak var tableView: UITableView!
    
    func setupSerachBar(){
        searchController.searchResultsUpdater = self
        searchController.searchBar.placeholder = "Search"
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    func downloadSongs(){
    Music.fetchSongs { (result: [Song]) in
            self.songs = result
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    func downloadSongsByName(nameSong: String){
        Music.fetchSongs(songName: nameSong) { (result: [Song]) in
            self.songs = result
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        downloadSongs()
        setupSerachBar()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension MusicViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicCell", for: indexPath)
        
        cell.textLabel?.text = songs[indexPath.row].name
        
        return cell
    }
}

extension MusicViewController: UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController) {
        downloadSongsByName(nameSong: searchController.searchBar.text!)
    }
    
}
