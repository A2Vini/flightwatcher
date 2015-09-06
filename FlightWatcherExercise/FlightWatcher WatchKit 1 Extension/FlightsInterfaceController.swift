//
//  TypeInterfaceController.swift
//  FlightWatcher
//
//  Created by Jan Wasgint on 23.08.15.
//  Copyright © 2015 JanWasgint. All rights reserved.
//

import WatchKit

class FlightsInterfaceController: WKInterfaceController {
    let dateFormat = "h:mm a"
    var flights: [Flight]?
    var showIncoming: Bool = false
    
    @IBOutlet var flightsTable: WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if let airportContext = context as? AirportContext {
            self.flights = airportContext.showIncoming ?
                airportContext.airport.incomingFlights :
                airportContext.airport.outgoingFlights
            setTitle(airportContext.airport.airportName)
            self.showIncoming = airportContext.showIncoming
            reloadTable()
        }
    }
    
    override func willActivate() {
        super.willActivate()
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }
    
    private func reloadTable() {
        // Step 14
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String,
        inTable table: WKInterfaceTable, rowIndex: Int) -> AnyObject? {
        // Step 15
            return nil
    }
    
    private func getFormattedDateAsString(date: NSDate) -> String {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = dateFormat
        return dateFormatter.stringFromDate(date)
    }
}