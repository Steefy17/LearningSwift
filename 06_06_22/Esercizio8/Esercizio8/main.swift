//ESERCIZIO 8

//Creare un programma che legga da tastiera 5 numeri e faccia la somma totale


//con for
var somma = 0
for index in 0...4{
    print("Inserire il \(index + 1)° numero")
    somma += Int(readLine()!)!      //funziona così
}
print("La somma è \(somma)")

//con while
somma = 0
var cont = 0
while cont < 5 {
    print("Inserire il \(cont + 1)° numero")
    somma += Int(readLine()!) ?? 0      //ma anche così
    cont += 1
}
print("La somma è \(somma)")

