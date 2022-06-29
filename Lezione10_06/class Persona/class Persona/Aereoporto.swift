//
//  Aereoporto.swift
//  class Persona
//
//  Created by user on 10/06/22.
//

/*
    aereoporto attributi -> vettore di aereo
               metodi -> partenza aereo, prende una posizione a caso dal vettore e lo fa partire
*/

import Foundation

class Airport {
    private var airplanes:[Airplane]
    init (){
        self.airplanes = []
        self.airplanes = airplaneVett(numDiAerei: 30)
    }
    
//############################## FLIGHT DEPARTURE METHOD ##################################
    func airplaneVett (numDiAerei: Int) -> [Airplane]{
        
        var myAirplanes :[Airplane] = []
        for _ in 1...numDiAerei{
            let myAirplane = Airplane(flightCode: generaCodiceVolo(), maxCapacity: Int.random(in: 1...100), necessaryFlightTime: Int.random(in: 1...100))
            myAirplanes.append(myAirplane)
        }
        return myAirplanes
    }

    private func generaCodiceVolo()-> String{
        var myCode = ""
        let myVettChar : [String] = ["a", "b", "c", "d", "e", "f", "5", "6", "7", "8", "9"]
        
        for _ in 1...10{
            myCode += myVettChar[Int.random(in : 0...myVettChar.count-1)]
        }
        return myCode
    }
    
}





