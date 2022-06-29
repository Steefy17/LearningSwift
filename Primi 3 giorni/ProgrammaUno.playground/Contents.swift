/* 31-05-2022
 array di array generato casualmente con numeri da 1 a 100 */

import Foundation

//Definizione limite di righe e colonne
let limite = Int.random(in: 1...10)

// Definizione matrice
var matrice:[[Int]] = Array()

// Inizializzazione contatori
var riga = 0
var colonna = 0

//Ciclo per aggiungere i sotto array
while riga < limite{
    
    //Inizializzo nullo l'array a
    var a:[Int] = Array()
    
    //ciclo per riempire gli array con numeri casuali
    while colonna < limite{
        a.append(Int.random(in: 1...100))
        colonna += 1
    }
    colonna = 0
    print(a)
    
    //Aggiungo array alla matrice
    matrice.append(a)
    riga += 1
}
riga = 0
colonna = 0

//Inizializzazione somme diagonali
var sommaA = 0 //da in alto a destra a in basso a sinistra
var sommaB = 0 //da in alto a sinistra a in basso a destra

riga = 0
colonna = 0

while riga < limite {
    while colonna < limite{
        
        // somma della diagonale A
        if colonna == riga {
            sommaA += matrice[riga][colonna]
        }
        
        //Somma della diagonale B
        if colonna == (limite-(riga+1)){
            sommaB += matrice[riga][limite-(riga+1)]
        }
        colonna += 1
    }
    colonna = 0
    riga += 1
}
print("La somma della diagonale da sinistra a destra è \(sommaA)\nLa somma della diagonale da destra a sinistra è \(sommaB)")

