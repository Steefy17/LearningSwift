//
//  Persona.swift
//  class Persona
//
//  Created by user on 10/06/22.
//

/*
 Persona attributi -> nome, cognome, età
         metodi -> get, set, costruttore, stampaInfo
 */
import Foundation

class Persona {
    
    private var name:String
    private var surname: String
    private var eta:Int
    
//############################ NAME METHODS ###############################################
    func getName()-> String{
        return self.name
    }

//############################ SURNAME METHODS ############################################
    func getSurname() -> String{
        return self.surname
    }

//############################ ETA METHODS ################################################
    func getEta() -> Int{
        return self.eta
    }
    
    func setEta(eta: Int){
        self.eta = eta > 0 ? eta : -eta
    }
    
//############################ INIT METHODS ###############################################
    init(name:String, surname: String, eta: Int){
        self.name = name
        self.surname = surname
        self.eta = eta
    }
    
//############################ STAMP METHOD ###############################################
    func stampInfoPerson () -> String{
        return ("#########################################\nName: " + self.name + "\nSurname: " + self.surname + "\nEtà: " + String(self.eta))
    }
}
