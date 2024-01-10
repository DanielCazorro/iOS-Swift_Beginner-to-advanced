//: [Previous](@previous)

import Foundation

// Guard Let Salida rápida

var myOptionalString: String?

func myFunction() {
    
    guard let myString = myOptionalString else {
        print("myString es nulo")
        return
    }
    print("El valor de myString es \(myString)")
}

myFunction()

myOptionalString = "Que tal está el día"

myFunction()


//: [Next](@next)
