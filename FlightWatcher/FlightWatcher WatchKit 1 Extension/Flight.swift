//
//  Flight.swift
//  FlightWatcher
//
//  Created by Jan Wasgint on 23.08.15.
//  Copyright © 2015 JanWasgint. All rights reserved.
//

import Foundation

class Flight {
    let flightCode: String
    let plannedTime: NSDate
    let expectedTime: NSDate
    let fromCity: String
    let toCity: String
    let terminalArea: String
    let flightState: String
    let airplane: Airplane
    
    init(flightCode: String, plannedTime: NSDate, expectedTime: NSDate,
        fromCity: String, toCity: String, terminalArea: String, flightState: String,
        airplane: Airplane) {
        self.flightCode = flightCode
        self.plannedTime = plannedTime
        self.expectedTime = expectedTime
        self.fromCity = fromCity
        self.toCity = toCity
        self.terminalArea = terminalArea
        self.flightState = flightState
        self.airplane = airplane
    }
    
    func isIncoming(airportCity: String) -> Bool {
        if airportCity == toCity { return true }
        return false
    }
}