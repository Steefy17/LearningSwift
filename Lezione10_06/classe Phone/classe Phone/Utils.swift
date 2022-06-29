//
//  Utils.swift
//  classe Phone
//
//  Created by user on 10/06/22.
//

/*
     IMPLEMENTARE
     LE SEGUENTI CLASSI.
  
  
     Una classe Phone
     che ha i seguenti attibuti
     
     imei = codice identificativo del telefono
     imei, modello,marca,prezzo,
     isDualSim = Boolean
  
     nota se il telefono è un iphone
     non puo' essere dual sim
     impostare un controllo
  
     > Creare il costruttore
     > Creare una funzione che stampi tutte
     le info
  
     > Creare i relativi metodi di get -set
  
     > i metodi set sono sempre void
       prendono in ingresso il relativo parametro
       e settano l'attributo della classe con self
  
     > metodi get return del relativo
         attributi
 
 Una volta creata, faccio un array di telefoni e cerco quello con il prezzo maggiore
 */

import Foundation

class Phone{
    //private let imei : Any
    //private let modello : String
    private var marca: String
    private var prezzo: Double
    private var dualSim: Bool
    /*
    var dualSim:Bool{
        get{
            return self.dualSim
        }
        set{
            self.dualSim = (self.marca == "apple" ? false : newValue)
        }
    }
     */
    func getuDualSim () -> Bool{
        return self.dualSim
    }
    
    func setDualSim(dualSim:Bool){
        self.dualSim = self.marca == "apple" ? false : dualSim
        
    }
    
    func getMarca()-> String{
        return self.marca
    }
    
    func getPrezzo () -> Double{
        return self.prezzo
    }
    func setPrezzo (prezzo : Double){
        self.prezzo = prezzo > 0 ? prezzo : -prezzo
    }
    
    init(marca: String, prezzo: Double, dualSim : Bool){
        self.prezzo = prezzo
        //self.modello = modello
        self.marca = marca
        self.dualSim = dualSim
        
        setDualSim(dualSim: dualSim)
        }
    
    func show(){
        print("marca: \(self.getMarca())\nprezzo: \(self.getPrezzo())\nDual sim?: \(self.getuDualSim())\n ")
    }
    

    
}
