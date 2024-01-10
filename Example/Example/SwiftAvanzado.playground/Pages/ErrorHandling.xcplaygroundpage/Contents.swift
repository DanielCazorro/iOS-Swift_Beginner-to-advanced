//: [Previous](@previous)

import Foundation

// Manejo de Errores

func sum(firstNumber: Int?, secondNumber: Int?) throws -> Int {

    //Lanzamos errores
    if firstNumber == nil {
        throw SumError.firstNumberNil
    } else if secondNumber == nil {
        throw SumError.secondNumberNil
    } else if firstNumber! < 0 || secondNumber! < 0 {
        throw SumError.numberNegative(firstNumber: firstNumber!, secondNumber: secondNumber!)
    }
    
    // Realizar la Suam
    return firstNumber! + secondNumber!
}


// Definición de tipos de errores

enum SumError: Error {
    case firstNumberNil
    case secondNumberNil
    case numberNegative(firstNumber: Int, secondNumber: Int)
}


//Propagación de errores
do {
    print(try sum(firstNumber: -90, secondNumber: 50))

} catch SumError.firstNumberNil {
    print("El primer número es nulo")
} catch SumError.secondNumberNil {
    print("El segundo número es nulo")
} catch SumError.numberNegative(let firstNumber, let secondNumber) {
    print("Hay algún número negativo. firstNumber:\(firstNumber), secondNumber: \(secondNumber)")
}




//: [Next](@next)
