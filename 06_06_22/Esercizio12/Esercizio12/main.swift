/*
 Creare un programma che prenda in input un numero > 0
 continuare a chiedere il numero se < 0
 
 Una volta passato il semaforo, stampare tutti i divisori del numero
 
 es:
    -5 no, -9 no, 10
    1 2 5 10
 */
var num = 0; var possMultiplo:Int

// con while
while num <= 0{
    print("Inserire un numero > 0")
    num = Int(readLine()!) ?? 0
}

/*
//con repeat while
repeat{
    print("Inserire un numero > 0")
    num = Int(readLine()!) ?? 0
} while num <= 0
   */

//while decrescente
possMultiplo = num/2
print(num, terminator: " ")
while possMultiplo != 0 {
    
    if num % possMultiplo == 0{
        print(possMultiplo, terminator: " ")
    }
    possMultiplo -= 1
}

print("\n")

 
//while crescente
possMultiplo = 1
while possMultiplo <= num/2 {
    if num % possMultiplo == 0{
        print(possMultiplo, terminator: " ")
    }
    possMultiplo += 1
}
print(num)

