//
//  StringExtTest.swift
//  Swiftext
//
//  Created by Sua Le on 6/17/17.
//  Copyright © 2017 Sua Le. All rights reserved.
//

import XCTest
import Swiftext

class StringExtTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFirstSubscript(){
        let text = "A"
        let ret = text[0]
        XCTAssert(ret == "A", "The first character is A")
    }
    
    func testLastSubscript(){
        let text = "AB"
        let ret = text[1]
        XCTAssert(ret == "B", "The last character is B")
    }
    
    func testSecondSubscipt(){
        let text = "ACBD"
        let ret = text[1]
        XCTAssertFalse(ret == "A", "The second character is not A")
    }
    
    func testFiftySubscript(){
        let text = "abcdefghrhsafsaklfjsdaf"
        let ret = text[15]
        XCTAssert(ret == "k", "The fifty character is k")
    }
    
    func testOutOfRangeSubscript(){
        let text = "abc"
        let ret = text[6]
        XCTAssert(ret == nil, "Out of range must return nil")
    }
    
    func testUnicodeSubscript(){
        let text = "ÁB"
        let ret = text[0]
        XCTAssert(ret == "Á", "The first character is Á")
    }
    
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
