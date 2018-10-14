//
//  FlightStatusViewController.swift
//  Flight Tracker
//
//  Created by Andrés Medrano on 10/12/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit

class FlightStatusViewController : UIViewController {
    
    
    // LABELS
    var pageTitleLabel : UILabel!
    
    // TEXT FIELDS
    var flightNumberTextField : UITextField!
    var flightDateTextField : UITextField!
    
    // BUTTONS
    var submitButton : StyledButton!
    
    // DATE PICKER
    var datePicker : UIDatePicker?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Set-up the Screen
        view.backgroundColor = UIColor.black
        displayPageTitle()
        displayFlightNumberField()
        displaySubmitButton()
        displayFlightDateField()
        
        setupDatePicker()
        addFieldListeners()
        setupGestureRecognizer()
         
    }
    
    @objc func viewTapped(gestureRecognizer: UIGestureRecognizer) {
        view.endEditing(true)
    }
    
    @objc func submitButtonClicked() {
        // segue to flight info page
        
        performSegue(withIdentifier: "toFlightInfoPage", sender: self)
    }
    
    @objc func textFieldChanged(_ target:UITextField) {
        let flightNumber = flightNumberTextField.text
        let flightDate = flightNumberTextField.text
        let formFilled = flightNumber != nil && flightNumber != "" && flightDate != nil && flightDate != ""
        setSubmitButton(enabled: formFilled)
    }
    
    @objc func dateChanged(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        flightDateTextField.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        get {
            return .lightContent
        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let destinationNavigationController = segue.destination as! UINavigationController
//        _ = destinationNavigationController.topViewController
//    }
//    
    
}
