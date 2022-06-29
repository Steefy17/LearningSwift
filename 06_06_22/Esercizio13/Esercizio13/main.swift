//ESERCIZIO 13
/*
scrivere un programma che verifica se un numero è primo
 
 Es: 7 è primo --> divisibile per 1 e 7
 11 è primo
 8 non è primo --> 1 2 4 8
 */

var i = 0

print("Inserire il numero da controllare");
var num = Int(readLine()!) ?? 0
var cont = num/2

while cont > 1 {
    num % cont == 0 ? (i += 1) : ()
    cont -= 1
}
i == 0 ? (print("Il numero è primo")) : (print("Il numero non è primo"))

