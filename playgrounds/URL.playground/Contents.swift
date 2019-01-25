//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

let urlBase = URL(string: "https://itunes.apple.com/search?term='mecano'")!

extension URL{
    func withQueries(_ queries: [String: String]) -> URL?{
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.compactMap{URLQueryItem(name: $0.0, value: $0.1)}
        return components?.url
    }
}

let query : [String: String] = [
    "term": "mecano",
    "limit": "10"
]

let url = urlBase.withQueries(query)

let task = URLSession.shared.dataTask(with: url!){ (data, response, error) in
    if let data = data, let string = String(data: data, encoding: .utf8){
        print(string)
    }
}

print("Anda por aca")

//ejecuta la tarea
task.resume()



//Sigue mandando solicitudes
PlaygroundPage.current.needsIndefiniteExecution = true
