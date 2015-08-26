//
//  AirportContext.swift
//  FlightWatcher
//
//  Created by Jan Wasgint on 24.08.15.
//  Copyright © 2015 JanWasgint. All rights reserved.
//

import Foundation

/*
* since segue data has to be of type 'AnyObject?' (-> no tuples can be used)
* and there is no way to access the segue identifier in awakeWithContext, I
* implemented this helperclass which saves the desired airport and whether the
* incoming or the outcoming flights shall be shown. It is used as segue context
* in the transition from TypeInterfaceController to FlightsInterfaceController.
*/
class AirportContext {
    let airport: Airport
    let showIncoming: Bool
    
    init(airport: Airport, showIncoming: Bool) {
        self.airport = airport
        self.showIncoming = showIncoming
    }
}