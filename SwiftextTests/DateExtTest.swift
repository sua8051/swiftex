//
//  DateExtTest.swift
//  Swiftext
//
//  Created by luan on 7/21/17.
//  Copyright © 2017 Sua Le. All rights reserved.
//

import XCTest
import Swiftext

class DateExtTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testJustNow() {
        let testDate = Date().addingTimeInterval(-59)
        let dentaString = testDate.string
        XCTAssert(dentaString == "Just now")
    }
    
    func testMinuteAgo() {
        let testDate = Date().addingTimeInterval(-64)
        let dentaString = testDate.string
        XCTAssert(dentaString == "1 min")
    }
    
    func test35MunutesAgo() {
        let minute = 35
        let testDate = Date().addingTimeInterval(TimeInterval(-minute * 60 - 23))
        let dentaString = testDate.string
        XCTAssert(dentaString == "35 mins")
    }
    
    func testHourAgo() {
        let hour = 1
        let testDate = Date().addingTimeInterval(TimeInterval(-hour * 3600 - 230))
        let dentaString = testDate.string
        XCTAssert(dentaString == "1 hour")
    }
    
    func test4HoursAgo() {
        let hour = 4
        let testDate = Date().addingTimeInterval(TimeInterval(-hour * 3600 - 230))
        let dentaString = testDate.string
        XCTAssert(dentaString == "4 hours")
    }
    
    func testYesterday() {
        let hour = 26
        let testDate = Date().addingTimeInterval(TimeInterval(-hour * 3600 - 230))
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "'Yesterday at 'h:mma"
        let expectString = dateFormatter.string(from: testDate)
        
        let dentaString = testDate.string
        XCTAssert(dentaString == expectString)
    }
    
    func testSameMonth() {
        let days = 17
        let testDate = Date().addingTimeInterval(TimeInterval(-days * 24 * 3600 - 230))
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d at h:mma"
        let expectString = dateFormatter.string(from: testDate)
        
        let dentaString = testDate.string
        XCTAssert(dentaString == expectString)
    }
    
    func testSameYear() {
        let days = 63
        let testDate = Date().addingTimeInterval(TimeInterval(-days * 24 * 3600 - 230))
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d"
        let expectString = dateFormatter.string(from: testDate)
        
        let dentaString = testDate.string
        XCTAssert(dentaString == expectString)
    }
    
    func testNotSameYear() {
        let days = 456
        let testDate = Date().addingTimeInterval(TimeInterval(-days * 24 * 3600 - 230))
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d, yyyy"
        let expectString = dateFormatter.string(from: testDate)
        
        let dentaString = testDate.string
        XCTAssert(dentaString == expectString)
    }
}
