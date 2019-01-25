//
//  CommonCryptoDigestsTests.swift
//  CommonCryptoDigestsTests
//
//  Created by DelaRosa Fernando on 06/10/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import XCTest
@testable import CommonCryptoDigests

class CommonCryptoDigestsTests: XCTestCase {
    
    let lipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pretium justo ut leo porta, eu scelerisque erat mattis. Duis sed ullamcorper arcu. In id est nec felis sodales malesuada sed et augue. Quisque laoreet massa vel mi faucibus fermentum. Pellentesque consequat viverra risus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi sed luctus justo."
    
    func testSha1() {
        let result = Digests.sha1(string: lipsum)
        XCTAssertEqual("6e41b64249200ab377a8c0b8b5433c51737e35af", result)
    }
    
    func testSha1Objc() {
        self.measure {
            
        }
    }
    
    func testSha1Integrity() {
        let swiftResult = Digests.sha1(string: lipsum)
        let objcResult = CDDigests.sha1String(lipsum)
        XCTAssertEqual(objcResult, swiftResult)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
