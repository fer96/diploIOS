//
//  Article.swift
//  NewYorkTimes
//
//  Created by DelaRosa Fernando on 06/10/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import Foundation

struct Article: Decodable{
    let source: String
    let sectionName: String
    let documentType: String
    let typeOfMaterial: String
    let dayOfWeek: String
    let webUrlString: String
    
    var webUrl: URL? {
        return URL(string: webUrlString)
    }
}
