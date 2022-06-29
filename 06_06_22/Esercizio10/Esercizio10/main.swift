// ESERCIZIO 10

/*
 
Data una sequenza di 5 numeri inseriti da tastiera contare quanti pari sono presenti nella sequenza
 
Es: 10 4 3 7 11 -----> 2
 
 */
var num: Int
var cont = 0
/*
//con for
for _ in 0...4{
    print("Inserisci il numero")
    num = Int(readLine()!) ?? 0
    if num % 2 == 0 {
        cont += 1
    }
}
print("Hai inserito \(cont) numeri pari")
*/

//con while
cont = 0
var index = 0
while index < 5 {
    print("Inserisci il numero")
    num = Int(readLine()!) ?? 0
    num % 2 == 0 ? (cont += 1) : (cont += 0) //al posto della seconda parentesi posso lasciare vuoto o mettere il punto e virgola
}
    print("Hai inserito \(cont) numeri pari")
