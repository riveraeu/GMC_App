//
//  Event.swift
//  EventListView
//
//  Created by student on 4/15/17.
//  Copyright © 2017 Aaron Pineda. All rights reserved.
//

import UIKit

class Event: NSObject {
    
    let event: AnyObject
    
    init(event: AnyObject){
        self.event = event
        super.init()
    }
    
    func getEventDate() -> String? {
        if let date = event["Date"]{
            return date as? String
        }
        return nil
    }
    
    func getEventTime() -> String? {
        if let time = event["Time"]{
            return time as? String
        }
        return nil
    }
    
    func getEventTitle() -> String? {
        if let title = event["Title"]{
            return title as? String
        }
        return nil
    }
    
    func getEventLocation() -> String? {
        if let location = event["Location"]{
            return location as? String
        }
        return nil
    }
    
    func getEventDescription() -> String? {
        if let description = event["Description"]{
            return description as? String
        }
        return nil
    }
    
    func getEventImage() ->UIImage? {
        if let uriString = event["Image"], let uri = uriString as? String {
            if let url = URL(string: uri),
                let data = try? Data(contentsOf: url),
                let image = UIImage(data: data) {
                return image
            }
        }
        return nil
    }
}
