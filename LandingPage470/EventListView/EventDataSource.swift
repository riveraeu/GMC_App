//
//  EventDataSource.swift
//  EventListView
//
//  Created by student on 4/15/17.
//  Copyright © 2017 Aaron Pineda. All rights reserved.
//

import UIKit

class EventDataSource: NSObject {
    var Events: [AnyObject]
    
    init(dataSource: [AnyObject]) {
        Events = dataSource
        super.init()
    }
    
    func numEvents() -> Int{
        return Events.count
    }
    
    func EventAt(_ index: Int) -> Event {
        let event = Event( event: Events[index] )
        return event
    }
}
