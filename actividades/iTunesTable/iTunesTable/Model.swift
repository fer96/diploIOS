//
//  Model.swift
//  iTunesTable
//
//  Created by DelaRosa Fernando on 01/09/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import Foundation

struct Results: Codable{
    var resultCount: Int
    var results: [Tracks]
}
struct Tracks: Codable {
    //estas variables tienen que llamarse igual que en la estructura del JSON
    var artistName: String
    var collectionName: String
    var trackName: String
    var artworkUrl100: String
}
