//ESERCIZIO 3

//Creare un programma. Prendo in input un numero e stabilire se è pari e dispari

print("Inserire il numero")
var numero = Int(readLine()!)

if numero! % 2 == 0 {
    print("Il numero \(numero!) è pari" )
} else {
    print("Il numero \(numero!) è dispari" )
}
