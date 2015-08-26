//
//  PlaneInterfaceController.swift
//  FlightWatcher
//
//  Created by Jan Wasgint on 24.08.15.
//  Copyright © 2015 JanWasgint. All rights reserved.
//

import WatchKit

class AirplaneInterfaceController: WKInterfaceController {
    @IBOutlet var airplaneImage: WKInterfaceImage!
    @IBOutlet var airplaneName: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        if let airplane = context as? Airplane {
            airplaneImage.setImageNamed(airplane.airplaneImageName)
            airplaneName.setText(airplane.airplaneName)
            setTitle(airplane.airplaneName)
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
}