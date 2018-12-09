//
//  Date+LeapYear.swift
//  SweetLeapYears
//
//  Created by Jérémie Vincke on 09/12/2018.
//  Copyright © 2018 Jérémie Vincke. All rights reserved.
//

import Foundation

//MARK: - Date extension : leap years

public extension Date {
    
    /// Returns true if the date is in a leap year, false otherwise.
    func isInLeapYear() -> Bool {
        let calendar = Calendar.current
        let year = calendar.component(Calendar.Component.year, from: self)
        return LeapYearAnalyzer.isLeapYear(year)
    }
    
}
