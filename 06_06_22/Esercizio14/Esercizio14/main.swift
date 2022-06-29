//ESERCIZIO 14

/*
 
 scrivere un programma che legge 10 numeri e dice quanti numeri sono positivi, negativi e nulli
 
*/

var i = 0
var num: Int
var numNeg = 0
var numPos = 0
var nulli = 0

while i < 10 {
    print("Inserisci il \(i+1)° numero")
    num = Int(readLine()!) ?? 0
    if num > 0 {
        numPos += 1
    } else if num == 0 {
        nulli += 1
    } else {
        numNeg += 1
    }; i += 1
}

print("Ci sono \(numPos) numeri positivi, \(nulli) numeri nulli, \(numNeg) numeri negativi ")


//per poterlo usare con le funzioni posso salvare in un array
var numeri:[Int] = Array()

i = 0
while i < 10{
    print("Inserisci il \(i+1)° numero")
    num = Int(readLine()!) ?? 0
    numeri.append(num)
    if num > 0 {
        numPos += 1
    } else if num == 0 {
        nulli += 1
    } else {
        numNeg += 1
    };i += 1
}
print("Ci sono \(numPos) numeri positivi, \(nulli) numeri nulli, \(numNeg) numeri negativi ")

