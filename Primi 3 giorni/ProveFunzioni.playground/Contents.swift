import Foundation

//Tutti i print sono messi come commenti. Per visualizzare l'output di un singolo test, rimuovere le barre di commento.


//TEST 1 bis: Senza "nome" e con l'utilizzo di on
func saluto(_ nome: String, on day: String) -> String {
    return "Ciao \(nome), oggi è \(day)."
}
//print(saluto ("Tu",on: "Martedì"))


//TEST 2: Restituzione di una frase realizzata tramite funzione
func specialeOggi(nome: String, speciale: String) -> String {
    return "Ciao \(nome), la specialità del giorno è \(speciale)."
}
//print(specialeOggi(nome:"Tu",speciale: "Polpettone"))


//TEST 3: Funzione che restituisce una tupla di valori
func calcoloStatistiche(valori: [Int]) -> (min:Int, max:Int, sum:Int){
    var min = valori[0]
    var max = valori[0]
    var sum = 0
    for valore in valori{
        if valore > max{
            min = valore
        } else if valore < min{
            max = valore
        }
        sum += valore
    }
    return(min, max, sum)
}
let statistiche = calcoloStatistiche(valori: [5, 3, 100, 3, 9])
//print(statistiche.sum)
//print(statistiche.2)


//TEST 4: è un programma che nel caso in cui anche UN solo voto è <18 restituisce FALSE, se tutti i voti sono ≥18 restituisce TRUE
func corrispondenze (voti: [Int], condizione: (Int) -> Bool) -> Bool {
    for voto in voti {
        if condizione(voto) {
            return true
        }
    }
    return false
}
func Insufficiente(valutazioni: Int) -> Bool {
    return valutazioni < 18
}
var valutazioni = [20, 19, 7, 12]
//print(corrispondenze(voti: valutazioni, condizione: Insufficiente))


//TEST 5
//Funzione che modifica ogni singolo elemento di un array e ne crea un altro in cui inserisce i valori modificati nell'ordine dell'array sorgente

let nuovo = valutazioni.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})
//print(valutazioni, nuovo)

//Oppure

let nuovo2 = valutazioni.map({ number in 3 * number })
//print(nuovo2)


//TEST 6
// il dollaro è necessario per indicare ordine crescente o decrescente (rispettivamente 1>0, 0>1)

let sortedNumbers = valutazioni.sorted { $1 > $0 }
//che si può scrivere anche
//let sortedNumbers = valutazioni.sorted(a, b in a > b)

print(sortedNumbers)
