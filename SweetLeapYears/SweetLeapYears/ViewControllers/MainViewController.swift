//
//  MainViewControllerViewController.swift
//  SweetLeapYears
//
//  Created by Jérémie Vincke on 09/12/2018.
//  Copyright © 2018 Jérémie Vincke. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    //MARK: - Outlets
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func didTapSubmit(_ sender: Any) {
        let isLeapYear = datePicker.date.isInLeapYear()
        let pickedYear = Calendar.current.component(.year, from: datePicker.date)
        let messageToDisplay = isLeapYear ? "\(pickedYear) is a leap year !" : "\(pickedYear) is not a leap year."
        showAlert(title: "\(pickedYear)", message: messageToDisplay)
    }
    
    @IBAction func didTapMoreInfo(_ sender: Any) {
        showAlert(title: "Leap years", message: getLeapYearsDescription())
    }
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    //MARK: - UIAlerts
    
    private func showAlert(title: String, message: String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        DispatchQueue.main.async {
            self.present(alertController, animated: true, completion: nil)
        }
        
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

