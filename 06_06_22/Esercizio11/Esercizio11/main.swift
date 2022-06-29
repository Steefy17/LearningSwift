//ESERCIZIO 11

/*
Prendere una sequenza di numeri che termina con un valore sentinella -1
stampare la media aritmetica
*/

//con while

var cont:Double = -1; var somma:Double = 0; var num:Double = 0

while num != -1 {
    somma += num
    cont += 1
    print("inserisci un numero"); num = Double(readLine()!) ?? 0
}
print("La media dei numeri inseriti è \(somma/cont)")



//con repeat-while
cont = 0; somma = 0; num = 0

repeat{
    print("inserisci un numero"); num = Double(readLine()!) ?? 0
    somma += num
    cont += 1
    
}while num != -1
print(somma/cont)
