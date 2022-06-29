//ESERCIZIO 6

//Creare un programma che prenda in input 2 numeri che sono la base e l'esponenete, calcola la potenza con un ciclo.

//con while
print("Indicare la base")
let base = Int(readLine()!)

print("Indicare la potenza")
let exp = Int(readLine()!)
var cont = 0
var potenza = 1
while cont < exp!{
    potenza *= base!
    cont += 1
}

//con for
print("Il risultato è \(potenza)")
potenza = 1
for _ in 1...exp! {
    potenza *= base!
}
print("Il risultato è \(potenza)")
