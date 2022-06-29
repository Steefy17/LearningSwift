//
//  Trainer.swift
//  squad
//
//  Created by user on 10/06/22.
//

import Foundation
/*#################################################################################################
 
allenatore --> attributi : nome, ingaggio(quanto prende).
               metodi : get e set (se sono opportuni!!), stampaInformazioniAllenatore.

#################################################################################################*/

class Trainer {
    private var name : String
    private var stipendio : Double
    
//#################################### NAME METHOD ################################################
    
    func getName() -> String{
        return self.name
    }
    
//################################## INGAGGIO METHODS #############################################
    
    func getStipendio () -> Double{
        return self.stipendio
    }
    func setStipendio (stipendio:Double){
        self.stipendio = stipendio > 0 ? stipendio : -stipendio
    }

//######################################## METODO INIT ############################################
    
    init(name:String, stipendio:Double){
        self.name = name
        self.stipendio = stipendio
        
        setStipendio(stipendio: stipendio)
    }
    
//#############################FUNZIONE PER STAMPARE SCHEDA ALLENATORE#############################
    
    func stampTrainerInformations ()-> String{
        return("Nome: \(self.name)\nStipendio: \(self.stipendio)")
    }
}
