/* 01-06-2022
 array di array generato casualmente con numeri da 1 a 100 */
/* Rivisitazione del programma del 31-05. Il calcolo della somma delle diagonali dovrà essere effettuato tramite delle funzioni  */
import Foundation

//Definizione limite di righe e colonne
let limite = Int.random(in: 3...5)

// Definizione matrice
var matrice:[[Int]] = Array()

// Inizializzazione contatori
var riga = 0
var colonna = 0

//Inizializzazione somme diagonali
var sommaA = 0 //da in alto a destra a in basso a sinistra
var sommaB = 0 //da in alto a sinistra a in basso a destra

//funzione che calcola la somma della diagonale da in alto a sinistra a in basso a destra
func diagonaleDestra (_ mat:[[Int]])-> Int{
    if colonna == riga {
        sommaA += mat[riga][colonna]
    }
    return sommaA
}

//funzione che calcola la somma della diagonale da in alto a destra a in basso a sinistra
func diagonaleSinistra (_ mat:[[Int]])-> Int{
    if colonna == (limite-(riga+1)){
        sommaB += mat[riga][limite-(riga+1)]
    }
    return sommaB
}

/*SOLUZIONE DI MARCO --> MENO VARIABILI UTILIZZATE
 
func diagonalesdestra (_ mat:[[Int]])-> Int{
    var sum = 0
    for i in 0..<mat.count {
        sum += mat [i][i]
    }
    return sum
}

func diagonalesinistra (_ mat:[[Int]])-> Int{
    var sum = 0
    for i in 0..<mat.count {
        sum += mat [i][nat.count-1-i]
    }
    return sum
}
 */

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

while riga < limite {
    while colonna < limite{
        
        // somma della diagonale A
        sommaA = diagonaleDestra(matrice)
        
        //Somma della diagonale B
        sommaB = diagonaleSinistra(matrice)
        colonna += 1
    }
    colonna = 0
    riga += 1
}
print("La somma della diagonale da sinistra a destra è \(sommaA)\nLa somma della diagonale da destra a sinistra è \(sommaB)")
