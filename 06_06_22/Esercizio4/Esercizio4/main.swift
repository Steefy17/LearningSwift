//ESERCIZIO 4

//Creare un programma che prende in input un intero e restituisca se la persona può affrontare l'esame di patente. Input > 18 ---> ok se no, no

print("Inserire la propria età")
var anni = Int(readLine()!)

if anni! >= 18 {
    print("Puoi sostenere l'esame")
} else {
    print("ATTENZIONE!! Non puoi sostenere l'esame")
}
