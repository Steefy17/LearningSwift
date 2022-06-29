//ESERCIZIO 9

/*Presi in input 2 numeri dove i numeri sono in ordine sparso. Creare un programma che faccia la sommatoria tra i due numeri
 5 ----- 10 ----> (5 + 6 + 7 + 8 + 9 + 10)
 10 ----- 5 ----> (5 + 6 + 7 + 8 + 9 + 10)
 */

var max:Int //Si può scrivere in entrambi i modi, così
var min = Int()  // o così

print("Inserire il primo numero"); var num1 = Int(readLine()!) ?? 0 // se non viene inserito nessun valore, consideralo uno 0
print("Inserire il secondo numero"); var num2 = Int(readLine()!) ?? 0

//Operatore ternario, if-else condensato
//il max riceve (numero uno è più grande di numero due?) num1 va dentro max, altrimenti ci va num2
max = num1 > num2 ? num1 : num2
min = num1 < num2 ? num1 : num2

print("Valore max \(max), valore min \(min)")

var somma = 0
                                
while min <= max {
    somma += min
    print(min)
    min += 1
}; print(somma)
