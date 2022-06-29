//
//  Personale.swift
//  class Persona
//
//  Created by user on 10/06/22.
//

/*personale attributi -> (quelli di persona), mansione(Tecnico, di bordo con l'enum o                           stringa)
          metodi -> (metodi di persona)
*/

import Foundation

class Personale: Persona {
    private var role:String
    
//############################### INIT METHOD #############################################
    init (name: String, surname: String, eta: Int, role : String) {
        
        self.role = role
        super.init(name: name, surname: surname, eta: eta)
    }
    
//############################### GET ROLE METHOD #########################################
    func getRole()-> String {
        return self.role
    }

//############################ STAMPA INFO OVERRIDE #######################################
    override func stampInfoPerson() -> String {
        return super.stampInfoPerson() + "\nMansione: " + String(self.role)
    }
    
}
