import UIKit
import PlaygroundSupport

struct Results: Codable{
    var resultCount: Int
    var results: [Tracks]
}
struct Tracks: Codable {
    //estas variables tienen que llamarse igual que en la estructura del JSON
    var artistName: String
    var collectionName: String
    var trackName: String
}

let urlBase = URL(string: "https://itunes.apple.com/search?")!

extension URL{
    func withQueries(_ queries: [String: String]) -> URL?{
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.compactMap{URLQueryItem(name: $0.0, value: $0.1)}
        return components?.url
    }
}

let query : [String: String] = [
    "term": "bob marley",
    "limit": "10"
]

let url = urlBase.withQueries(query)
let jsonDecoder = JSONDecoder()

let task = URLSession.shared.dataTask(with: url!){ (data, response, error) in
    if let data = data, let trackDictionary = try? jsonDecoder.decode(Results.self, from: data){
        trackDictionary.results.forEach({ (track) in
            print(track.artistName, track.trackName)
            })
    }else{
        print("Si pero no" + error.debugDescription)
    }
}

//ejecuta la tarea
task.resume()

//Sigue mandando solicitudes
PlaygroundPage.current.needsIndefiniteExecution = true

