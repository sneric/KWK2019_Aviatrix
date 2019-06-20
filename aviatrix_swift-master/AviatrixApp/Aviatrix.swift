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
    // created in iteration 2
    var distanceTraveled = 0
    //iteration 2
    var maxFuel = 5000.0 // gallons
    //iteration 2
    var fuelLevel = 5000.0 //gallons
    //iteration 2
    var milesPerGallon = 0.4 // miles per gallon
    // iteration 2
    var fuelCost = 0.0
    
    init(userName: String) {
        author = userName
    }
    var running = false
    
    func start() -> Bool {
       // return true (iteration 0)
            running = true
            return running
        }
    
    func refuel() -> Double{
        // iteration 2 refueling steps
        let gallonsNeeded = Double(maxFuel) - fuelLevel
        let data = AviatrixData()
        fuelCost += gallonsNeeded * data.fuelPrices[location]!
        
        fuelLevel = 5000.0
        
        return gallonsNeeded
    }
    
    func flyTo(destination : String) {
        //iteration 2 function to complete distance traveled
       distanceTraveled += distanceTo(current: location, target: destination)
    
        //iteration 2
       let fuelSpent = Double(distanceTraveled) / milesPerGallon
        
         //iteration 2
       fuelLevel -= fuelSpent
        
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
