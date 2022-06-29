//
//  Player.swift
//  squad
//
//  Created by user on 10/06/22.
//

import Foundation

/*#################################################################################################
player     --> attributi : nome, ruolo, numero.

               metodi : get e set (se sono opportuni!!), stampaInformazioniGiocatore.
#################################################################################################*/

class Player {
    private var name: String
    private var role: String
    private var number: Int
//#################################### NAME METHOD ################################################
    
    func getName()-> String{
        return self.name
    }
//#################################### ROLE METHODS ###############################################
    
    func getRole()-> String{
        return self.role
    }
    func setRole(role:String ){
        if role == "p" || role == "c" || role == "a" || role == "c"{
            self.role = role
        }
        print("Something wrong")
    }
//################################### NUMBER METHODS ##############################################
    
    func getNumber()-> Int{
        return self.number
    }
    func setNumber(number:Int ){
        if number > 0{
            self.number = number
        }
        
        //else errore oppure
        //self.number = number > 0 ? number : -number
    }

//######################################## METODO INIT ############################################
    
    init(name: String, role: String, number:Int){
        self.number = number
        self.role = role
        self.name = name
        setRole(role: role)
    }

//## ###########################FUNZIONE PER STAMPARE SCHEDA GIOCATORE#############################
    
    func stampPlayersInformations()-> String{
        return ("Nome: \(self.name)\nRuolo: \(self.role)\nNumero: \(self.getNumber())")
    }
}
