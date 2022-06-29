//
//  main.swift
//  class Persona
//
//  Created by user on 10/06/22.
//

import Foundation

//Classe persona, Sottoclasse capitano, Sottoclasse personale, sottoclasse passeggero
//classe aereo
//classe aereoporto

/*
 
 Sistema di gestione per gli aerei
 
 */

let passeggero1 = Passeggero(name: "Matilde", surname: "Romeo", eta: 51, cartaDimbarco: "5cLl89v")
//print(passeggero1.stampInfoPerson())

let capitano1 = Capitano(name: "Michele", surname: "Bravi", eta: 40, flightTime: 200)
//print(capitano1.stampInfoPerson())

let personale1 = Personale(name: "Ginevra", surname: "Amoroso", eta: 25, role: "Di Bordo")
let personale2 = Personale(name: "Vanessa", surname: "Incontrada", eta: 30, role: "Di Bordo")
let personale3 = Personale(name: "Andrea", surname: "Maggioni", eta: 35, role: "Tecnico")

let capitano2 = Capitano(name: "Mauro", surname: "Riva", eta: 44, flightTime: 500)

let aereo1 = Airplane(flightCode: "5cLl89v", maxCapacity: 40, necessaryFlightTime: 150)
//print(aereo1.addPasseggero(passeggero: passeggero1))
print(aereo1.getVett())

let aereoporto = Airport()
print(aereoporto)
