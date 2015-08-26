//
//  TypeInterfaceController.swift
//  FlightWatcher
//
//  Created by Jan Wasgint on 23.08.15.
//  Copyright © 2015 JanWasgint. All rights reserved.
//

import WatchKit

class TypeInterfaceController: WKInterfaceController {
    var airport: Airport?
    let AD = ["Arrivals", "Departures"]
    
    @IBOutlet weak var ADTable: WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        if let airport = context as? Airport {
            self.airport = airport
            setTitle(airport.airportName)
        }
        ADTable.setNumberOfRows(2, withRowType: "TypeRow")
        for i in [0,1] {
            if let row = ADTable.rowControllerAtIndex(i) as? TypeRow {
                row.ADImage.setImageNamed("\(AD[i]).png")
                row.ADLabel.setText(AD[i])
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
            if segueIdentifier == "FlightsSelection" {
                return AirportContext(airport: airport!,
                    showIncoming: rowIndex == 0)
            }
            return nil
    }
}