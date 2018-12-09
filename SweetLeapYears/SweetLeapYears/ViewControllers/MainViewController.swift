//
//  MainViewControllerViewController.swift
//  SweetLeapYears
//
//  Created by Jérémie Vincke on 09/12/2018.
//  Copyright © 2018 Jérémie Vincke. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let leapYearsDescription = getLeapYearsDescription()
        print("LYD : \(leapYearsDescription)")
        
        
    }


}

private extension MainViewController {
    
    func getLeapYearsDescription() -> String {
        let leapYearsDescriptionFileInfo = ("Leap_years_description", "txt")
        guard
            let leapYearsDescriptionFilePath = Bundle.main.path(forResource: leapYearsDescriptionFileInfo.0, ofType: leapYearsDescriptionFileInfo.1),
            let leapYearsDescriptionFile = FileManager.default.contents(atPath: leapYearsDescriptionFilePath),
            let leapYearsDescription: String = String(data: leapYearsDescriptionFile, encoding: .utf8) else {
                fatalError("Failed to obtain leap years description.")
        }
        return leapYearsDescription
    }
    
}

