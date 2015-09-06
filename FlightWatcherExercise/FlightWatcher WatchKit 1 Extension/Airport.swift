//
//  Airport.swift
//  FlightWatcher
//
//  Created by Jan Wasgint on 23.08.15.
//  Copyright © 2015 JanWasgint. All rights reserved.
//

import Foundation

class Airport {
    let airportName: String
    let flights: [Flight]
    private var _incomingFlights: [Flight]?
    var incomingFlights: [Flight] {
        if _incomingFlights == nil {
            _incomingFlights = flights.filter { $0.isIncoming(airportName) }
        }
        return _incomingFlights!
    }
    private var _outgoingFlights: [Flight]?
    var outgoingFlights: [Flight] {
        if _outgoingFlights == nil {
            _outgoingFlights = flights.filter { !$0.isIncoming(airportName) }
        }
        return _outgoingFlights!
    }
    
    init(airportName: String, flights: [Flight]) {
        self.airportName = airportName
        self.flights = flights
    }
}