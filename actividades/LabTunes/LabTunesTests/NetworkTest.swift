//
//  NetworkTest.swift
//  LabTunesTests
//
//  Created by Alexis Celestino Solís on 11/9/18.
//  Copyright © 2018 Alexis Celestino Solís. All rights reserved.
//

import XCTest
@testable import LabTunes

class NetworkTest: XCTestCase {
    var sessionUnderTest: URLSession!
    
    override func setUp() {
        super.setUp()
        sessionUnderTest = URLSession(configuration: .default)
    }
    
    func testValidCallToItunes() {
        let url = URL(string: "https://itunes.apple.com/search?media=music&entity=song&term=Queen")
        var statusCode: Int?
        var resposeError: Error?
        let promise = expectation(description: "Handler Invoked")
        let dataTask = sessionUnderTest.dataTask(with: url!) {data, respose, error in
            statusCode = (respose as? HTTPURLResponse)?.statusCode
            resposeError = error
            promise.fulfill()
        }
        dataTask.resume()
        waitForExpectations(timeout: 5, handler: nil) //Termina de cumplir las promesas de las pruebas
        XCTAssertNil(resposeError)
        XCTAssertEqual(statusCode, 200)
    }
    
    func testSlowValidCallToItunes() {
        let url = URL(string: "https://itunes.apple.com/search?media=music&entity=song&term=abba")
        let promise = expectation(description: "Status code: 200")
        let dataTask = sessionUnderTest.dataTask(with: url!) {data, respose, error in
            if let error = error {
                XCTFail("Error: (\(error.localizedDescription))")
            } else if let statusCode = (respose as? HTTPURLResponse)?.statusCode {
                if statusCode == 200 {
                    promise.fulfill()
                } else {
                    XCTFail("Status code: \(statusCode)")
                }
            }
        }
        dataTask.resume()
        waitForExpectations(timeout: 5, handler: nil)
    }
}
