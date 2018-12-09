# SweetLeapYears

SweetLeapYears is an iOS app, written in Swift, designed to solve the Coding Dojo challenge "Leap Years" (http://codingdojo.org/kata/LeapYears/).

## Getting Started

First, download the project. Then simply run the iOS app on either a physical iOS device, or an iOS simulator. This project has no dependencies

### Prerequisites

Xcode 10 or higher

## Running the app

Once SweetLeapYears is started, it will display a date picker to the user. Upon tap on the "Submit" button, the app will analyse the picked date, and present a popup to inform the user whether this date is in a leap year.

SweetLeapYears's interface also contains a "What's a leap year" button ; upon tap, a popup with some documentation about leap years (source : http://codingdojo.org/kata/LeapYears/) will be presented.

## Running the tests

This app was developed using TDD (test-driven development). The Xcode project contains a "SweetLeapYearsTests" target, which contains the unit test that ensures the LeapYearAnalyzer works as intented.
