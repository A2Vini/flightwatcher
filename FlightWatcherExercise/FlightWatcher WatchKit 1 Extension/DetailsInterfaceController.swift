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
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    private func getFormattedDateAsString(date: NSDate, format: String) -> String {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.stringFromDate(date)
    }
}
