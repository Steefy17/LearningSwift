//
//  Utils.swift
//  squad
//
//  Created by user on 10/06/22.
//

import Foundation

/*
 team       --> attributi : nome:string, array di player(max 11, no riserve)[player], allenatore              (1): allenatore.
 
                metodi : get e set,
                         aggiungiAllenatore (prende in input un allenatore e sovrascrive un
                            allenatore se c'è già, se no lo aggiunge e basta)
                         aggiungiPlayer (prende in input un player se il numero del vettore è
                            inferiore a 11 --> se player è portiere controllo se ne ho già uno)
                            ritorna un bool, sono risucita ad aggiungere o no
 */

class Team {
    private var name : String
    private var players : [Player]
    private var trainer: Trainer?           //questo può essere nullo
//#################################### NAME METHODS #######################################
    
    func getName()-> String{
        return self.name
    }
//#################################### PLAYERS METHODS ####################################

    func getPlayers()-> [Player]{
        return self.players
    }
//#################################### TRAINER METHODS ####################################
    
    func getTrainer()->Trainer{
        return self.trainer!
    }
//######################################## METODO INIT ####################################
    
    init(name: String) {
        self.name = name
        self.players = []
        self.trainer = nil              //inizializzo vuoto
    }
//################################# METODO PER AGGIUNGERE L'ALLENATORE ####################
    
    func addTrainer (trainer: Trainer) {
        self.trainer = trainer
    }

//################################# METODO PER CONTROLLARE IL PORTIERE ####################
    
    func PPresente () -> Bool{
        var boolean = false
        for element in self.players{
            element.getRole() == "p" ? boolean = true : ()
        }; return boolean
    }
    
//################################# METODO PER AGGIUNGERE I GIOCATORI ####################
    
    func addPlayer (player:Player)-> Bool{
        
        if players.count > 10{
            return false
        }
        if PPresente() {
            return false
        }
        
        self.players.append(player)
        return true
    }
    
    func showTeam(){
        print("Nome team: \(self.getName())\n")
        print("Allenatore: ")
        print(self.trainer!.stampTrainerInformations())
        print("\nGiocatori:")
        for player in self.players{
            print(player.stampPlayersInformations())
        }
        print("###############################################")
    }
}
