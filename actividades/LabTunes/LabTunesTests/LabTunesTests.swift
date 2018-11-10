//
//  LabTunesTests.swift
//  LabTunesTests
//
//  Created by Alexis Celestino Solís on 11/9/18.
//  Copyright © 2018 Alexis Celestino Solís. All rights reserved.
//

import XCTest
@testable import LabTunes

class LabTunesTests: XCTestCase {

    override func setUp() {
        let session = Session.sharedInstance
        session.token = nil
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // La prueba empieza
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        // La prueba termina
    }
    
    func testCorrectLogin() { //Inicia la palabara test
        XCTAssertTrue(User.login(userName: "iOSLab", password: "ve"))
    }
    
    func testWrongLogin() {
        XCTAssertFalse(User.login(userName: "X", password: "Y"))
    }
    
    func testSaveSession() {
        let session = Session.sharedInstance
        let _ = User.login(userName: "iOSLab", password: "223")
        XCTAssertNotNil(session.token)
    }
    
    func testFailSaveSession() {
        let session = Session.sharedInstance
        let _ = User.login(userName: "", password: "223")
        XCTAssertNil(session.token)
    }
    
    func testExpectedToken() {
        let session = Session.sharedInstance
        let _ = User.login(userName: "iOSLab", password: "223")
        XCTAssertEqual(session.token!, "dvmsjirnwj", "Token True")
        XCTAssertNotEqual(session.token!, "", "Not equal")
    }
    
    func testSessionNoAvailable() {
        XCTAssertThrowsError(try User.fetchSongs())
    }
    
    func testMusicSongs() {
        var resultSongs: [Song] = []
        let promise = expectation(description: "Song Dowloaded")
        Music.fetchSongs { (songs) in
            resultSongs = songs
            promise.fulfill()
        }
        waitForExpectations(timeout: 5, handler: nil)
        XCTAssertNotEqual(resultSongs.count, 0)
    }
}
