/* 01-06-2022
 Test del libro sulle classi e oggetti
 */

//TEST 1
import Foundation

class Shape {
    var numberOfSides = 0
    let constant = "ciao"
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    func saluto(constant:String) -> String {
        return "\(constant), la tua figura ha \(numberOfSides) lati. "
    }
}


var shape = Shape()
shape.numberOfSides = 7
var ShapeDescription = shape.simpleDescription()
//print(ShapeDescription)

//print(shape.saluto(constant:"ciao"))


//TEST 2
class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Circle:NamedShape {
    var radius: Double
    
    init(radius:Double, name:String){
        self.radius = radius
        super.init(name:name)
    }
    
    func area() -> Double{
        return 3.14*radius*radius
    }
    
    override func simpleDescription() -> String {
        return "A circle with a \(radius) radius"
    }
}

let test = Circle(radius: 4.3, name: "my test circle")
//print("\(test.area())\n\(test.simpleDescription())")


//TEST 3
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king

    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
    func compare (to other:Rank) -> CompareResult{

        switch self {
        case let x where x.rawValue > other.rawValue:
            return CompareResult.greater
        case let x where other.rawValue > x.rawValue:
            return CompareResult.lesser
        default:
            return CompareResult.equal
        }
    }
}

enum CompareResult: Int {
    case lesser, equal, greater
}

Rank.king.compare(to: Rank.ace)


//TEST 4
enum Suit {
    case spades, hearts, diamonds, clubs

    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    func color() -> String {
        switch self {
        case .hearts:
            return "red"
        case .diamonds:
            return "red"
        default:
            return "black"
            
        }
    }
}

Suit.clubs.color()

//ARRAY DI STRUCT
//TEST 5

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    
    
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
