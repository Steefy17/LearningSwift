//
//  Capitano.swift
//  class Persona
//
//  Created by user on 10/06/22.
//

import Foundation
/*
Capitano attributi -> (quelli di persona), numeroOreVolo (flightTime)
         metodi -> (metodi di persona)
*/

class Capitano : Persona {
    
    private var flightTime: Int
    
//########################### INIT METHODS ################################################
    init (name: String, surname: String, eta: Int, flightTime : Int) {
        
        self.flightTime = flightTime
        super.init(name: name, surname: surname, eta: eta)
    }
//########################### GET AND SET METHODS #########################################
    func getFlightTime() -> Int{
        return self.flightTime
    }
    func setFlightTime (flightTime : Int){
        self.flightTime = flightTime > 0 ? flightTime : -flightTime
    }
    
//############################ STAMPA INFO OVERRIDE #######################################
    override func stampInfoPerson() -> String {
        return super.stampInfoPerson() + "\nFlight time: " + String(self.flightTime)
    }
    
    
    
}
