//: [Previous](@previous)

import Foundation

// Genéricos

// Sin genéricos
func swapTwoInts(a: inout Int, b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

var myFirstInt = 5
var mySecondInt = 10
print("El primer valor es \(myFirstInt) y el segundo valor es \(mySecondInt)")
swapTwoInts(a: &myFirstInt, b: &mySecondInt)
print("El primer valor es \(myFirstInt) y el segundo valor es \(mySecondInt)")

// Con genéricos
func swapTwoGenerics<T>(a: inout T, b: inout T) {
    let tempA = a
    a = b
    b = tempA
}

var myFirstGeneric = "Daniel"
var mySecondGeneric = "Master"
print("El primer valor es \(myFirstGeneric) y el segundo valor es \(mySecondGeneric)")
swapTwoGenerics(a: &myFirstGeneric, b: &mySecondGeneric)
print("El primer valor es \(myFirstGeneric) y el segundo valor es \(mySecondGeneric)")

//: [Next](@next)
