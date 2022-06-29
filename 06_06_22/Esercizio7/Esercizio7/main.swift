//ESERCIZIO 7

//Creare uno script che prenda in input un numero e calcoli il suo fattoriale. Se il numero è negativo si scrive il numero positivo

//con while
print("Inserire il numero di cui fare il fattoriale")
var num = Double(readLine()!)
if num! < 0 {
    num! *= -1
}

while num! > 1 {
    ris *= num!
    num! -= 1
}
print(ris)

let ris = Double(sqrt(2 * Double.pi * num!)*pow( num! / exp(1.0), num!))
print(ris)
 
