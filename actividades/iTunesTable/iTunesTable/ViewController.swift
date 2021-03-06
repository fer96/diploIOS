//
//  ViewController.swift
//  iTunesTable
//
//  Created by DelaRosa Fernando on 01/09/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource ,UITableViewDelegate {
    
    @IBOutlet weak var tablita: UITableView!
    
    
    var tracks: [Tracks] = []
    let urlBase = URL(string: "https://itunes.apple.com/search?")!
    let query : [String: String] = [
        "term": "mecano",
        "limit": "50"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        cell.textLabel?.text = tracks[indexPath.row].trackName
        
        //para pasar la imagen
        do{
        let urlImage = URL(string: tracks[indexPath.row].artworkUrl100)
        let dataImage = try Data(contentsOf: urlImage!)
            cell.imageView?.image = UIImage(data: dataImage)
        }catch{
            print(error)
        }
        
        return cell
    }
    //Implementar un delegate esta accion ya no se usa, por que el delegate tiene mas peso
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            tracks.remove(at: indexPath.row)
            tablita.reloadData()
        }
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let shareAction = UIContextualAction(style: .normal, title: "Share") { (action, sourceView, completionHandler) in
            let text = "Listening: " + self.tracks[indexPath.row].trackName
            let activityController = UIActivityViewController(activityItems: [text], applicationActivities: nil)
            self.present(activityController, animated: true, completion: nil)
        }
        shareAction.backgroundColor = UIColor.orange
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, sourceView, completion) in
            self.tracks.remove(at: indexPath.row)
            self.tablita.deleteRows(at: [indexPath], with: .fade)
        }
        
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [deleteAction, shareAction])
        
        return swipeConfiguration
    }
    
    //segue para pasar cosas entre vistas
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecond"{
            let indexPath = tablita.indexPathForSelectedRow
            let destination = segue.destination as! SecondViewController
            destination.fromFirstView = tracks[(indexPath?.row)!].trackName
            destination.imageFromFirstView = tracks[(indexPath?.row)!].artworkUrl100
        }
    }
    
    
    func fetchData(){
        let url = urlBase.withQueries(query)
        let jsonDecoder = JSONDecoder()
        let task = URLSession.shared.dataTask(with: url!){ (data, response, error) in
            if let data = data, let trackList = try? jsonDecoder.decode(Results.self, from: data){
                var temp: [Tracks] = []
                trackList.results.forEach({ (track) in
                    temp.append(track)
                })
                self.tracks = temp
                self.tablita.reloadData()
            }else{
                print("Si pero no " + error.debugDescription)
            }
        }
        task.resume()
    }
}

extension URL{
    func withQueries(_ queries: [String: String]) -> URL?{
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.compactMap{URLQueryItem(name: $0.0, value: $0.1)}
        return components?.url
    }
}
