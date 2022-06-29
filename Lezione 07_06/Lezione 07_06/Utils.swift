import Foundation


/*
 
 Creare una funzione
 IMPORTANTE ---> indica in un commento in alta input e output della funzione
 se vuoi essere più completa, aggiungi un esempio
 
Funzione 1:
 Funzione che prende in input un numero e ritorna il suo successivo
 
 es: input (8) ----> output(9)
 
 */

func calcolaProssimoValore(myNum : Int) -> Int {
    return myNum + 1
}



/*
Funzione 2:
 Creare una funzione che prenda in input 3 numeri e in output il numero più grande
 
 es: input (8, 20, 60) ---> output (60)
 */

func calcoloMassimo(num1 : Int, num2 : Int, num3 : Int) -> Int {
    var mass = num1 > num2 ? num1 : num2
    mass = mass > num3 ? mass : num3
    return mass
}

/*
 Funzione 3:
 creare una funzione che prenda in input un intero che rappresenta i minuti e li converta in secondi
 
 Nota : se l'input < 0
        return 0
 
 es:
    input(53) ---> output(3180)
 */


func convertMinSec (minuti : Int) -> Int {
    if minuti <= 0 {
        return 0
    }
    return minuti*60
}


/*
 Posso utilizzare anche funzioni void (senza variabili in input o output)
 
 Funzione 4:
 Creare una funzione che prende una sequenza di numeri, la sequenza termina con il valore -1
 Al termine della sequenza, il programma stampa con una print se nella sequenza sono alternati elementi pari con elementi dispari, altrimenti stampa no
    
 La sequenza deve essere pari, dispari, pari, dispari, ...
 es:
    10 3 20 5 -1 -----> si
    10 4 20 3 -1 -----> no
 
 */

func controlloSequenza() {
    var index = 0//Index per capire la posizione del numero che controllo
    var flag : Bool = true //flag per stabilire se la sequenza è rispettata o no
    
    repeat{
        print("Inserisci un numero (termina con -1)")
        let num = Int(readLine()!) ?? 0
        
        if num == -1 {
            break
        }
        
        if index % 2 == 0 {             // Controllo le posizioni pari (0, 2, 4, ...)
            if num % 2 != 0 {           // se il numero è dispari
                flag = false            // la sequenza non è valida
            }
        } else {                          // Posizioni dispari: 1, 3, 5, ...
            if num % 2 == 0 {           // se il numero è pari
                flag = false            // la sequenza non è valida
            }
        }
        index += 1          //incremento la pisizione
    }while true
    
    if flag == false {      //Sequenza non valida
        print("No")
    }else{                  // sequenza valida
        print("si")
    }
}

    
/*

 Funzione 5:
 Creare una funzione che prende 2 stringhe e ritorni la stringa con caratteri maggiori (stringa più lunga)

 es: " ciao " "buongiorno"  ----> "buongiorno"
 
*/

func longerString (_ stringaUno : String, _ stringaDue : String) -> String {

    if stringaUno.count > stringaDue.count {
        return stringaUno
    } else if stringaDue.count > stringaUno.count{
        return stringaDue
    } else {
        return "Le stringhe sono uguali"
    }
}

/*
 
 Funzione 6:
 Creare una funzione che stampa a video.
 Stampa a video tutte le tabelline che vanno dal 2 al 10
 
 2 * 0 = 0
 2 * 1 = 2
 
 ---------
 3 * 0 = 0
 3 * 1 = 3
 
 */

func tabelline() {
    for i in 2...10 {
        print("Tabellina del \(i)")
        for c in 0...10{
            print("\(i) *  \(c) =  \(i * c) ")
        }
        print("\n")
    }
    
}


/*
 
 Funzione 7:
 Creare un programma che prende base e altezza e restituisca la seguente figura
 
 Es: base = 2, altezza = 3
    ***
    ***
 
 Es: base = 4, altezza = 3
    ****
    ****
    ****
 
 serve terminator
 
 */

func rettangolo (_ base: Int, _ altezza: Int) {
    
    for i in 1...altezza{
        for j in 1...base{
            i == j ? print("😁",terminator: "") :print("*", terminator: "")
        }
        print("\n")
    }
}


/*
 
 Funzione 8:
 Crea una funzione che prende un vettore di interi in input e ritorni la somma totale del vettore
 
 [8, 2, 1] ---> 11 out(numero)
 
 */

func totale (_ arr:[Int]) -> Int{
    var tot = 0
    for i in arr{
        tot += i
    }; return tot
}



/*
 
 Funzione 9:
 Creare un programma che prende in input un vettore e ritorni vero se il vettore ha tutti elementi multipli di 5, altrimenti ritorna falso
 
 es: [10, 5, 20] ---> true
 es: [11, 5, 20] ---> false
 
 */


func multipliDiCinque () -> Bool {
    var arr: [Int] = []
    repeat{
        print("Inserire il numero (-1 per chiudere)")
        let num = Int(readLine()!) ?? 0
        if num == -1 {
            break
        } else if num % 5 != 0{
            return false
        }
        arr.append(num)
    } while true
    return true
}


/*
 
 Funzione10:
 prendo in input un array di lettere in ordine crescente (a, b, c, d, e, ....) e deve ritornare la lettera mancante
 
 es: [a, b, c, d, f] ---> e
 
 */

func conversione (_ vett: [Character]) -> [UInt8] {
    var num:[UInt8] = []
    for el in vett{
        num.append(el.asciiValue ?? 0)
    }
    return num
}
    
func mancante (_ vett: [UInt8]) -> Character {
    var elementoMancante : Character = "z"
    for i in 0..<(vett.count-1){
        if vett[i]+1 != vett[i+1] {
            elementoMancante = (Character(UnicodeScalar(vett[i]+1)))
        }
    }
    return elementoMancante
}

