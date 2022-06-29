//
//  main.swift
//  squad
//
//  Created by user on 10/06/22.
//

import Foundation

var trainer1 = Trainer(name: "Paolo Bianchi", stipendio: 30)

var trainer2 = Trainer(name: "Giorgio", stipendio: 30000)

var team1 = Team(name: "I colorati")
team1.addTrainer(trainer: trainer1)
var name:String? = "Void"
while name != "" {
    print("Inserisci il nome")
    name = readLine() ?? "None"
    print("Inserisci il ruolo")
    let role:String = readLine() ?? ""
    print("Inserisci il numero")
    let number:Int = Int(readLine()!) ?? 0
    let player = Player(name: name!, role: role, number: number)
    team1.addPlayer(player: player) ? print("Giocatore aggiunto"):print("Non c'è più posto")
    
}

team1.showTeam()
