//
//  FlightInfo-UISetup.swift
//  Flight Tracker
//
//  Created by Andrés Medrano on 10/13/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit

extension FlightInfoViewController {
    
//    var originAirportLabel : UILabel!     // if clicked, segue to airport info page
//    var destinationAirportLabel : UILabel! // if clicked, segue to airport info page
//    var aircraftTypeLabel : UILabel!
//    var flightStatusLabel : UILabel!
//    var scheduledDeparture : UILabel!
//    var scheduledArrival : UILabel!
//    var departureGate : UILabel!
//    var arrivalGate : UILabel!
//    var departureTerminal : UILabel!
//    var arrivalTerminal : UILabel!
    
    func displayPageTitle() {
        pageTitleLabel = UILabel(frame: CGRect(x: view.frame.width / 8, y: 1.25 * view.frame.height / 10 , width: view.frame.width, height: 50))
        pageTitleLabel.text = "Flight <393>"
        pageTitleLabel.textColor = UIColor.white
        pageTitleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        self.view.addSubview(pageTitleLabel)
    }
    
    func displayOriginAirportName() {
        flightStatusLabel = UILabel(frame: CGRect(x: view.frame.width / 8, y: 1.75 * view.frame.height / 10, width: view.frame.width , height: 20))
    }
    
    func displayDestinationAirportName() {
        
    }
    
    func displayAircraftType() {
        
    }
    
    func displayFlightStatus() {
        
    }
    
    func displayScheduledDeparture() {
        
    }
    
    func displayScheduledArrival() {
        
    }
    
    func displayDepartureGate() {
        
    }
    
    func displayArrivalGate() {
        
    }
    
    func displayDepartureTerminal() {
        
    }
    
    func displayArrivalTerminal() {
        
    }
    
    func setupNavigationBar()
    {
        navigationItem.title = "<Flight Number>" // Replace with flight number entered from user
        navigationController?.isNavigationBarHidden = false
    }
    
    
    
}
