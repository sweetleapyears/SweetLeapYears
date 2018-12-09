//
//  SweetLeapYearsTests.swift
//  SweetLeapYearsTests
//
//  Created by Jérémie Vincke on 09/12/2018.
//  Copyright © 2018 Jérémie Vincke. All rights reserved.
//

import XCTest
@testable import SweetLeapYears

class SweetLeapYearsTests: XCTestCase {

    override func setUp() {
        
        super.setUp()
        self.continueAfterFailure = false
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLeapYearAnalyzer() {
        
        let leapYears: [Int] = [2000, 2008, 2012, 2016]
        let notLeapYears: [Int] = [2017, 2018, 2019, 1700, 1800, 1900, 2100, -1, Int.min, Int.max]
        
        let datesInLeapYears: [Date] = leapYears.map { Date(year: $0) }
        let datesInNotLeapYears : [Date] = notLeapYears.map { Date(year: $0) }
        
        for date in datesInLeapYears {
            print("Analyzing \(date)")
            let isLeapYear = date.isInLeapYear()
            XCTAssertTrue(isLeapYear)
        }
        
        for date in datesInNotLeapYears {
            print("Analyzing \(date)")
            let isLeapYear = date.isInLeapYear()
            XCTAssertFalse(isLeapYear)
        }
        
    }
    
}

//MARK: - Date object creation

private extension Date {
    
    /// Initializes a new Date object at January 1st of the provided year.
    init(year: Int) {
        
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = 1
        dateComponents.day = 1
        self = Calendar.current.date(from: dateComponents)!
        
    }
        
}
