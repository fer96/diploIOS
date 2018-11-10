//
//  User.swift
//  LabTunes
//
//  Created by Alexis Celestino Solís on 11/9/18.
//  Copyright © 2018 Alexis Celestino Solís. All rights reserved.
//

import Foundation

class User {
    static let userName = "iOSLab"
    static let password = "verysecurepassword"
    static let session = Session.sharedInstance
    
    static func login(userName: String, password: String) -> Bool {
        if self.userName == userName {
            session.saveSession()
            return true
        }
        return false
    }
    
    static func fetchSongs() throws {
        guard let toke = Session.sharedInstance.token else {
            throw UserError.notSessionAvailble
        }
        debugPrint(toke)
    }
}

enum UserError: Error {
    case notSessionAvailble
}


