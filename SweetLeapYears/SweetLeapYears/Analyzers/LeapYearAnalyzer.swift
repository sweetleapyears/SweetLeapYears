//
//  LeapYearAnalyzer.swift
//  SweetLeapYears
//
//  Created by Jérémie Vincke on 09/12/2018.
//  Copyright © 2018 Jérémie Vincke. All rights reserved.
//

import Foundation

/*
 ==============================================================
 Documentation (source : http://codingdojo.org/kata/LeapYears/)
 ==============================================================
 
 Acceptance Criteria:
 
 C1. All years divisible by 400 ARE leap years (so, for example, 2000 was indeed a leap year)
 
 C2. All years not divisible by 4 are NOT leap years (e.g. 2017, 2018, 2019)
 C3. All years divisible by 100 but not by 400 are NOT leap years (so, for example, 1700, 1800, and 1900 were NOT leap years, NOR will 2100 be a leap year)
 
 C4. All years divisible by 4 but not by 100 ARE leap years (e.g., 2008, 2012, 2016)
 
 
 */

//MARK: - Leap year analyzer

internal struct LeapYearAnalyzer {
    
    /// Returns true if the given year is a leap year, false otherwise.
    static func isLeapYear(_ year: Int) -> Bool {
        
        // C1
        guard year % 400 != 0 else {
            return true
        }
        
        // C2
        guard year % 4 == 0 else {
            return false
        }
        
        // C3
        guard year % 100 != 0 || year % 400 == 0 else {
            return false
        }
        
        // We have a potential candidate ; let's ensure it's indeed a leap year
        
        // C4 : we already know this year is divisible by 4 thanks to C2. Yet, year can still be divisible by 100, and therefore not be a leap year
        guard year % 100 != 0 else {
            return false
        }
        
        return true // This year is a leap year
        
    }
    
}
