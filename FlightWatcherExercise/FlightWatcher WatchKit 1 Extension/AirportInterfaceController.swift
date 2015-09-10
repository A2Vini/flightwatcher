//
//  InterfaceController.swift
//  FlightWatcher WatchKit 1 Extension
//
//  Created by Jan Wasgint on 22.08.15.
//  Copyright © 2015 JanWasgint. All rights reserved.
//

import WatchKit

class AirportInterfaceController: WKInterfaceController {

    @IBOutlet var airportTable: WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        setTitle("FlightWatcher")
        airportTable.setNumberOfRows(airports.count, withRowType: "AirportNameRow")
        for i in 0..<airports.count {
            if let row = airportTable.rowControllerAtIndex(i) as? AirportNameRow {
                row.airportNameLabel.setText(airports[i].airportName)
            }
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
    
    override func contextForSegueWithIdentifier(segueIdentifier: String,
        inTable table: WKInterfaceTable, rowIndex: Int) -> AnyObject? {
        // TODO Students: Pass selected airport to the next interface
        return nil
    }
}
