//
//  DetailsInterfaceController.swift
//  FlightWatcher
//
//  Created by Jan Wasgint on 24.08.15.
//  Copyright © 2015 JanWasgint. All rights reserved.
//

import WatchKit

class DetailsInterfaceController: WKInterfaceController {
    let dateFormat = "dd.MM.yyyy"
    let timeFormat = "h:mm a"
    var flight: Flight?
    
    @IBOutlet var flightDateLabel: WKInterfaceLabel!
    @IBOutlet var flightCodeLabel: WKInterfaceLabel!
    @IBOutlet var fromCityLabel: WKInterfaceLabel!
    @IBOutlet var toCityLabel: WKInterfaceLabel!
    @IBOutlet var planTimeLabel: WKInterfaceLabel!
    @IBOutlet var expectedTimeLabel: WKInterfaceLabel!
    @IBOutlet var terminalAreaLabel: WKInterfaceLabel!
    @IBOutlet var flightStateLabel: WKInterfaceLabel!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if let flight = context as? Flight {
            self.flight = flight
            setTitle(flight.flightCode)
            
            flightDateLabel.setText(
                getFormattedDateAsString(flight.expectedTime, format: dateFormat))
            flightCodeLabel.setText(flight.flightCode)
            fromCityLabel.setText(flight.fromCity)
            toCityLabel.setText(flight.toCity)
            planTimeLabel.setText(
                getFormattedDateAsString(flight.plannedTime, format: timeFormat))
            expectedTimeLabel.setText(
                getFormattedDateAsString(flight.expectedTime, format: timeFormat))
            terminalAreaLabel.setText(flight.terminalArea)
            flightStateLabel.setText(flight.flightState)
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    private func getFormattedDateAsString(date: NSDate, format: String) -> String {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.stringFromDate(date)
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        if (segueIdentifier == "AirplaneDetails") {
            return flight?.airplane
        }
        print("\(segueIdentifier)")
        return nil
    }

}
