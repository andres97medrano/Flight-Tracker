//
//  FlightStatus-UISetup.swift
//  Flight Tracker
//
//  Created by Andrés Medrano on 10/12/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//
import UIKit

extension FlightStatusViewController : UITextFieldDelegate {
    
    func displayPageTitle() {
        pageTitleLabel = UILabel(frame: CGRect(x: view.frame.width / 8, y: 1.25 * view.frame.height / 10 , width: view.frame.width, height: 50))
        pageTitleLabel.text = "Lufthansa Airlines"
        pageTitleLabel.textColor = UIColor.white
        pageTitleLabel.font = UIFont.boldSystemFont(ofSize: 30)
        self.view.addSubview(pageTitleLabel)
    }
    
    func displayFlightNumberField() {
        flightNumberTextField = UITextField(frame: CGRect(x: view.frame.width / 8, y: 4 * view.frame.height / 10, width: 6 * view.frame.width / 8, height: 40))
        flightNumberTextField.placeholder = "Flight Number"
        flightNumberTextField.textAlignment = .center
        flightNumberTextField.backgroundColor = UIColor.white
        view.addSubview(flightNumberTextField)
    }
    
    func displayFlightDateField() {
        flightDateTextField = UITextField(frame: CGRect(x: view.frame.width / 8, y: 5 * view.frame.height / 10, width: 6 * view.frame.width / 8, height: 40))
        flightDateTextField.placeholder = "Date of Flight"
        flightDateTextField.textAlignment = .center
        flightDateTextField.backgroundColor = UIColor.white
        view.addSubview(flightDateTextField)
    
    }
    
    func displaySubmitButton() {
        submitButton = StyledButton(frame: CGRect(x: view.center.x / 2, y: 7.75 * view.frame.height / 10, width: 200, height: 50))
        submitButton.setTitleColor(UIColor.black, for: .normal)
        submitButton.setTitle("Submit", for: .normal)
        submitButton.titleLabel?.font = UIFont.systemFont(ofSize: 18.0, weight: UIFont.Weight.bold)
        submitButton.highlightedColor = UIColor(white: 1.0, alpha: 1.0)
        submitButton.defaultColor = UIColor.white
        submitButton.addTarget(self, action: #selector(submitButtonClicked), for: .touchUpInside)
        submitButton.alpha = 0.5
        view.addSubview(submitButton)
        setSubmitButton(enabled: false)
    }
    
    func setupDatePicker() {
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(dateChanged(datePicker:)), for: .valueChanged)
        flightDateTextField.inputView = datePicker
    }
    
    func addFieldListeners() {
        flightNumberTextField.delegate = self
        flightDateTextField.delegate = self
        
        flightNumberTextField.addTarget(self, action: #selector(textFieldChanged), for: .editingChanged)
        flightDateTextField.addTarget(self, action: #selector(textFieldChanged), for: .editingChanged)
    }
    
    func setupGestureRecognizer() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(tapGesture)
    }
    
    func setSubmitButton(enabled:Bool) {
        if enabled {
            submitButton.alpha = 1.0
            submitButton.isEnabled = true
        } else {
            submitButton.alpha = 0.5
            submitButton.isEnabled = false
        }

    }
}
