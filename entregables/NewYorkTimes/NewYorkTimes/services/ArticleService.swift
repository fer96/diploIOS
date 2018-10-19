//
//  ArticleService.swift
//  NewYorkTimes
//
//  Created by DelaRosa Fernando on 06/10/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import Foundation

struct ArticleService {
    static let shared = ArticleService()
    
    let jsonDecoder = JSONDecoder()
    
    let client = Client(baseURLComponents: URLComponents(string: "http://api.nytimes.com/svc/search/v2/articlesearch.json?q=new+york+times&page=2&sort=oldest&api-key=38254e3e921d40f687ac22c5371094d2")!)
    
    static func listAllSync() -> [Article]{
        let decoder = JSONDecoder()
        print("DATASOURCE")
        let result = try? decoder.decode([Article].self, from: DataSource().articles)
        return result ?? []
    }
    
    func all(_ completion: @escaping ([Article]) -> Void){
        client.get(path: " "){ (data) in
            guard let jsonData = data else{ return }
            let result = try? self.jsonDecoder.decode([Article].self, from: jsonData)
            completion(result ?? [Article]())
        }
    }
}
