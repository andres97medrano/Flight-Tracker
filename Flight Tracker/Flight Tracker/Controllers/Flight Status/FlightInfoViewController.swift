//
//  FlightInfoViewController.swift
//  Flight Tracker
//
//  Created by Andrés Medrano on 10/13/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit

class FlightInfoViewController : UIViewController {
/*
    Make sure the nav bar shows the flight number as the title.
     
    Add a BarButtonItem to the nav bar that allows the user to “favorite” a flight. This should add it to
    UserDefaults so it can be displayed on the Favorites Page. Think: What information can I add to
    UserDefaults so that the flight can be easily accessed from the API again in the future?
     
    Add labels that show the origin and destination airport. If the user taps one of these, segue to the
    Airport Information Page that is described below for the airport that was selected.
     
    Add labels that show the scheduled (and actual, if available) times of the flight departure and arrival
     
    Add labels that show the aircraft type. This is provided as a 3 digit code. If you have time, research
    the equivalent aircraft type for each code (I.E. 32M should be displayed as Airbus A320) so that the
    interface is more readable by the user. Hint: this information can be found using an API call.
     
    Add a label that shows the flight status. This is provided from the API and is usually a term like
    “Flight Landed” or “Flight Arrived.”
     
    Add a labels for the departure and arrival terminals and gates.
     
    Add a map view with a pin on the origin airport and a pin on the destination airport with a line
    connecting them.
     
    Remember that flight status requests may not provide all of the information that we ask for every time.
    This is ok; information changes depending on factors such as how far in the future the flight is, if the
    flight is on time, etc… Make sure you handle null values correctly and update the user interface to show
    that the data is not available (hide labels or remove cells from the table view if you choose to use one)
    
     Look at other Airline apps for inspiration. United’s app has a flight status page very similar to the one
     described here.
*/
    
    // LABELS
    var pageTitleLabel : UILabel!
    
    var originAirportLabel : UILabel!     // if clicked, segue to airport info page
    var destinationAirportLabel : UILabel! // if clicked, segue to airport info page
    var aircraftTypeLabel : UILabel!
    var flightStatusLabel : UILabel!
    var scheduledDeparture : UILabel!
    var scheduledArrival : UILabel!
    var departureGate : UILabel!
    var arrivalGate : UILabel!
    var departureTerminal : UILabel!
    var arrivalTerminal : UILabel!
    // NOTE: We may not get all possible info w/ every call so handle nil values appropriately.
    
    // Need to add a map view with a pin on the origin airport and a pin on the destination airport w/
    // a line connecting them.
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Set-up the Screen
        view.backgroundColor = UIColor.blue
        displayPageTitle()
        setupNavigationBar()
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        get {
            return .lightContent
        }
    }
}
