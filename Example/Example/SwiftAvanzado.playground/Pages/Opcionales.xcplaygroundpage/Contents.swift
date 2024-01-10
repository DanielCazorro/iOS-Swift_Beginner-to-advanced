//: [Previous](@previous)

import Foundation

// Opcionales

let myStringNumber = "100"
let myIntNumber = Int(myStringNumber)

let myWrongStringNumber = "Daniel"
let myWoringIntNumber: Int? = Int(myWrongStringNumber)

var myOptionalString: String?

myOptionalString = "Soy un String"

if myOptionalString != nil {
    print("Nuestra variable tiene un valor distinto de nulo")
} else {
    print("Nuestra variable es nula")
}

//: [Next](@next)
