//
//  Utils.swift
//  Lezione08_06_1
//
//  Created by user on 08/06/22.
//

import Foundation

/**
 Funzione 1:
    Creare una funzione che prenda in input
    un vettore di interi
    e ritorni il massimo elemento presente nel vettore
 
    Es:
        input [ 1, 4, 6, 10] ----> output(10)
 
 */
func maxElem (_ vett:[Int]) -> Int {
    var massimo = 0
    for i in vett {
        if i > massimo {
            massimo = i
        }
    }; return massimo
}

/**
 Funzione 2:
    Creare una funzione che prenda in input
    un vettore e ritorni il minimo elemento presente
    nel vettore
    Es:
        input [ 1, 4, 6, 10] ----> output(1)
 
 */

func minElem (_ vett:[Int]) -> Int {
    var minimo = vett[0]
    for i in vett {
        i < minimo ? minimo = i: ()
    }; return minimo
}




/**
 Funzione 3:
    Creare una funzione che prenda in input
    2 vettori e ritorni un nuovo vettore
    che rappresenta la somma elemento per elemento
 
    Nota : I due vettori  hanno gli stessi elementi
 
    [1 , 4 , 5 ]  [ 2 , 3  ,1 ]  ==>  [ 3 , 7 , 6]
 */

func sommaVettori (_ v1: [Int], _ v2 : [Int]) -> [Int] {
    var sum: [Int] = []
    for i in 0...(v1.count-1) {
        sum.append(v1[i] + v2[i])
        }
    return sum
}



/**
 Funzione 4:
    Creare una funzione che prenda in input un vettore
    e ritorni il numero che si ripete piu' volte nel vettore
 
    [ 2 , 3 ,2 , 2 , 1 ]  ----->  2
 
**/

// Provato ma non funzionante, qua sotto la soluzione del professore
func trovaModa(_ vett :  [Int]) -> Int {
    
    var moda : Int = 0
    var index : Int = 0
    var j = 0;
    var max = 0 ;
    var cont  : Int  = 0
    var elementoCorrente = 0;
    
    while(index < vett.count){
        j = index
        elementoCorrente = vett[index]
        
        while( j   < vett.count){
            
            if(vett[j] == elementoCorrente ){
                cont += 1
               // vett.remove(at : j);
            }
        
            j+=1
        }
        
        if(cont >= max ){
            max = cont
            moda = elementoCorrente
        }
        cont = 0
        index += 1
    }; return moda;
}

// ##############################################################################

// Iniziamo con la funzione random
func numeriRandom() {
    let randomInt = Int.random(in: 0..<6)
    let randomDouble = Double.random(in: 2.71828 ... 3.14159)
    let randomBool = Bool.random()
    
    print("Random int \(randomInt)")
    print("Random double \(randomDouble)")
    print("Random bool  \(randomBool)")
}


/*
 Funzione 5:
 
 Funzione che restituisce la somma di due dadi
 output = somma di due numeri casuali
 */

/*
 HAI FATTO TUTTO TROPPO INSIEME
 sarebbe stato meglio che dividessi tutto come ha fatto il professore
 */
/*func sommaDadi()-> Int{
    return Int.random(in: 1...6) + Int.random(in: 1...6)
}

 // Funzione che fa una statistica su un tot di lanci
func statisDado () {
    var i = 0
    let numeroDiLanci = 100000
    var risultati:[Int] = [0,0,0,0,0,0,0,0,0,0,0]
    while i < numeroDiLanci {
        risultati[sommaDadi()-2] += 1
        i += 1
    }
    
    for i in 0...10{
        risultati[i] = risultati[i]/(numeroDiLanci/100)
    }
    var cont = 0
    for i in 0...10{
        print("\(i + 2) ", terminator: "")
        while cont < risultati[i] {
            print("*", terminator: "")
            cont += 1
        }
        print("\n")
        cont = 0
    }
}*/

//Funzione del professore
func sommaDadi() -> Int{
    return Int.random(in: 1...6) + Int.random(in: 1...6)
}

func simulazioneLancioDadi() -> [Int] {
    
    var index = 0;
    let numeroDiLanci = 10000;
    
    var risultati : [Int] = [0 , 0 , 0,
                             0 , 0 , 0,
                             0 , 0 , 0,
                             0 , 0 , 0 , 0 ];
    
    while(index < numeroDiLanci ) {
        risultati[sommaDadi()] += 1
        index += 1
    }
    
    return risultati;
    
}

func vectorScaling(vett : [Int] ,scaling : UInt32) -> [Int] {
    
    var risVett : [Int] = []
    var index = 0
    
    for element  in vett {
        if(index <= 1){
            index += 1
            continue
        }
        risVett.append( (element/Int(scaling) ))
    }
    return risVett;
}


func stampaDati(vett : [Int]){
    var index = 0
    for elemento in vett {
        index = elemento
        while(index > 0){
            print("*" , terminator : "")
            index -= 1
        }
        print()
    }
}

func mySimulations(){
    
    stampaDati(vett:  vectorScaling(vett: simulazioneLancioDadi(), scaling: 100))
}



/*
 
 Funzione 6:
    Creare una funzione ce popola un vettore di n  0 e 1 (true e false)
 Es:
input (3) ---> [true, true, false]
 
 poi cerco se ci sono due posizioni continue che sono true e indico la loro posizione, se non dovessero esserci [-1, -1]
 input ([true, true, false]) --> [0,1]
 
 */


//Popolazione array
func popolazione(_ posti: Int)-> [Bool] {
    var vett: [Bool] = []
    for _ in 0..<posti{
        vett.append(Bool.random())          //Popolazione casuale dei posti
    }
    return vett
}

//Ricerca quanti posti liberi
func contaPostiLiberi(_ vett:[Bool]) -> Int{
    var liberi = 0
    for posto in vett{
        posto == true ? (liberi += 1) : ()
    }
    return liberi
}

//I primi 2 posti liberi che trova li mostra
func postiVicini (_ vett: [Bool]) -> [Int]{
    
    var i = 0
    while i < vett.count-1 {
        if vett[i] == vett[i+1] && vett[i] == true {
            return[i, i+1]
        }
        i += 1
    }
    return [-1 , -1]
}


//Tutti i 2 posti vicini disponibili
func postiViciniBis (_ vett: [Bool]) -> [[Int]] {
    var postiDisponibili: [[Int]] = []
    var i = 0
    while i < vett.count-1 {
        if vett[i] == vett[i+1] && vett[i] == true {
            postiDisponibili.append([i, i+1]) 
        }
        i += 1
    }; return postiDisponibili
}

//Controllo 2 posti più vicini alla metà
func postiCentrali (_ vett: [[Int]], _ numeroPosti: Int) -> [Int]{
    var posti: [Int] = [ -1, -1]                                      //Inizializzo return
    var distanceFromMiddle = 10000000000000                         //Variabile di confronto
    let postiCentrali = numeroPosti/2                               //Posizione centrale
    for i in vett{
        if abs(i[0] - postiCentrali) < distanceFromMiddle {         //controllo distanza dal centro
            distanceFromMiddle = abs(i[0] - postiCentrali)          //sovrascrizione
            posti[0] = i[0]                                         //Aggiunta posizione
            posti [1] = i[0] + 1
        }
    }; return posti
}


/*################################################################################
 Codeworse exercise 1:
 Your task is to find all the elements of an
 array that are non consecutive.

 You should return the results as an array of tuples
 with two values: the index of the non-consecutive number
 and the non-consecutive number.
 
Es:
 [1,2,3,4,6,7,8,15,16] --->  [( 4, 6 ), ( 7, 15 )]
                             (posizione, valore) !!!!!!
*/

func allNonConsecutive (_ arr: [Int]) -> [(Int, Int)] {
  var vett:[(Int,Int)] = []
  var i = 0                                             //potevo fare anche così
  while i < arr.count-1 {                               //for element in 1..<arr.count {
    if arr[i]+1 != arr[i+1] {                           //if arr[element] != arr[element - 1] + 1 {
      vett.append((i+1, arr[i+1]))                      //tupleArray.append((element,arr[element]))
    }
     i += 1
  }
  return vett
}

/*
 Codeworse exercise 2:
 
 */

func squareDigits(_ num:Int)->Int{               //9119
    let numbers : String = String(num)           // "9119"
    var output:String = ""
    //Tratta le stringhe come vettori
    for c in numbers {                                          //c sono i caratteri di numbers
        let a = String(c)                       //Trasformo il character in stringa
        let b = Int(a)                          //Trasformo la stringa in int
        let d = b! * b!                         //Eseguo l'operazione (con forzatura)
        output += String(d)                     //"811181" aggiungo uno alla volta i risultati
    }
    return Int(output)!                         //Forzo la trasformazione di output in int
}



// ################################################################################
/*
 Funzione 7:
 Crea una funzione che prende in input una matrice
 di interi e ritorna la somma di tutta gli elementi
 della matrice
 
 ES:
 [[1,5,7],[4,3,8],[8,2,1]] ----> 39
 */

func sommaMatrice (_ matr:[[Int]]) -> Int{
    var somma = 0
    for i in 0...matr.count-1 {
        for j in 0...matr[i].count-1 {
            somma += matr[i][j]
        }
    }
    return somma
}


