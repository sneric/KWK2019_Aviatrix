//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    var author = ""
    // add initial location so myPlane.location will work (iteration 1)
    var location = "St. Louis"
    
    init(userName: String) {
        author = userName
    }
    var running = false
    
    func start() -> Bool {
       // return true (iteration 0)
            running = true
            return running
        }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        // one line to get new location to be your destination (iteration 1)
       location = destination
        
    }
    
    func distanceTo(current: String, target : String) -> Int{
        // add -> Int to end of function! (interation 1)
        // add the data variable to connect to AviatrixData.swift (iteration 1)
        let data = AviatrixData()
       // return data.knownDistances["St. Louis"]![target]! (iteration 1)
        return data.knownDistances[current]![target]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
