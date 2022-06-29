//
//  Aereo.swift
//  class Persona
//
//  Created by user on 10/06/22.
//

/*
aereo attributi -> codiceVolo, vettore di persona(capitano, personale, passeggero),                      capienza massima, numero di ore necessarie per usarlo(esperienza)
      metodi -> aggiungi capitano [aggiunge un capitano all'interno dell'aereo se e                solamente se non esiste un altro capitano già aggiunto e se il                  capitano ha abbastanza ore di volo],
                aggiungi persona [aggiunge o uno del personale o un passeggero, il personale viene sempre aggiunto(is kind of class), per il passeggero posso aggiungerlo solo se ho posto nell'aereo e se il dodice dell'aereo corrisponde perfettamente alla carta d'imbarco]
 */

import Foundation

class Airplane {
    private var flightCode : String
    private var vett: [Persona]
    private let maxCapacity : Int
    private var necessaryFlightTime : Int
    private var numOfPersonale: Int
 
//########################### INIT METHODS ################################################
    init (flightCode : String, maxCapacity : Int, necessaryFlightTime : Int){
        
        self.flightCode = flightCode
        self.vett = []
        self.maxCapacity = maxCapacity
        self.necessaryFlightTime = necessaryFlightTime
        self.numOfPersonale = (maxCapacity/10)-1
        
    }
//############################ GET METHODS ################################################
    func getFlightCode ()->String{
        return self.flightCode
    }
    
    func getVett () -> [Persona]{
        for i in vett{
            print(i.stampInfoPerson())
        }
        return vett
    }
    
    func getMaxCapacity () ->Int{
        return self.maxCapacity
    }
    
    func getNecessaryFlightTime() -> Int{
        return self.maxCapacity
    }
    
//########################### ADD CAPTAIN METHOD ##########################################
    func addCaptain (captain : Capitano?) -> Bool{
        if captain == nil {
            return false
        }
        for element in self.vett {
            if element is Capitano{
                return false
            }
        };
        if captain!.getFlightTime() >= self.necessaryFlightTime{
            self.vett.append(captain!)
        }
        return true
    }
//########################## ADD PERSONALE METHOD #########################################

    func addPersonale (personale : Personale) -> Bool{
        var cont = 0
        for i in self.vett {
            if i is Personale{
                cont += 1
            }
        }
        if  cont < numOfPersonale {
            return true
        }
        return false
    }

//########################### ADD PASSEGGERO METHOD #######################################

    func addPasseggero (passeggero : Passeggero) -> Bool{
        var boolean = false
        if controlloPosti() && passeggero.getCartaDimbarco() == self.getFlightCode(){
            self.vett.append(passeggero)
            boolean = true
        }
        return boolean
    }
   
//########################### ADD PERSONA METHOD ##########################################

    func addPersona (person : Persona) -> Bool{
        var bool = false
        if person is Capitano {
            bool = addCaptain(captain: person as? Capitano)
            bool ? self.vett.append(person as! Capitano) : ()
            return bool
        }
        
        if person is Personale {
            bool = addPersonale(personale: person as! Personale)
            bool ? self.vett.append(person as! Personale) : ()
            return bool
        }
        
        if person is Passeggero && self.vett.count < self.maxCapacity{
            if controlloPosti(){
                bool = addPasseggero(passeggero: person as! Passeggero)
            }
        }
        return bool
    }
    
//################### CONTA PASSRGGERI ####################################################
    func controlloPosti()-> Bool{
        var bool = false
        var cont = 0
        for element in self.vett{
            element is Passeggero ? cont+=1 : ()
        }
        cont < (self.maxCapacity-self.numOfPersonale-1) ? bool = true: ()
         return bool
    }
    
    func stampaVett () {
        for elemento in self.vett{
            print(elemento.stampInfoPerson())
        }
    }
    
    func stampaInfoAirplane (){
        print(self.flightCode)
        self.stampaVett()
        print(String(self.maxCapacity) + " " + String(self.necessaryFlightTime))
    }
    
}


