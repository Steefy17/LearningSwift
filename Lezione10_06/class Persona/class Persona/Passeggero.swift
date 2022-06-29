//
//  Passeggero.swift
//  class Persona
//
//  Created by user on 10/06/22.
//

/*
passeggero attributi -> (quelli di persona), carta di imbarso (contiene numero di                              volo(stringa))
           metodi -> (metodi di persona)
*/

import Foundation

class Passeggero:Persona {
    private var cartaDimbarco : String

//########################### INIT METHODS ################################################
    init (name: String, surname: String, eta: Int, cartaDimbarco : String) {
        
        self.cartaDimbarco = cartaDimbarco
        super.init(name: name, surname: surname, eta: eta)
    }
    
//########################### GET AND SET METHODS #########################################
    func getCartaDimbarco ()-> String{
        return self.cartaDimbarco
    }
    
    func setCartaDimbarco (cartaDimbarco : String){
        self.cartaDimbarco = cartaDimbarco
    }

//############################ STAMPA INFO OVERRIDE #######################################
    override func stampInfoPerson() -> String {
        return super.stampInfoPerson() + "\nCarta d'imbarco: " + String(self.cartaDimbarco)
    }
}
