//: [Previous](@previous)

import Foundation

// Enlaces opcionales

var myOptionalString: String?
var myOptionalString2: String?
var myOptionalString3: String?


myOptionalString = "Daniel"
myOptionalString2 = "Pedro"
myOptionalString3 = "Juan"


if let myString = myOptionalString, let myString2 = myOptionalString2, let myString3 = myOptionalString3 {
    print("\(myString) \(myString2) \(myString3)")
} else if let myString = myOptionalString {
    print("myOptionalString posee un valor no nulo = \(myString)")
}

// Desempaquetado forzado

if myOptionalString2 != nil {
    print(myOptionalString2!)
}
//: [Next](@next)
