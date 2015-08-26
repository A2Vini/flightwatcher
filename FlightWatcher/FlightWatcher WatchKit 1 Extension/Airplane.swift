//
//  Plane.swift
//  FlightWatcher
//
//  Created by Jan Wasgint on 24.08.15.
//  Copyright © 2015 JanWasgint. All rights reserved.
//

import Foundation
import WatchKit

class Airplane {
    let airplaneName: String
    let airplaneImageName: String
    
    init(airplaneName: String, airplaneImageName: String) {
        self.airplaneName = airplaneName
        self.airplaneImageName = airplaneImageName
    }
}
