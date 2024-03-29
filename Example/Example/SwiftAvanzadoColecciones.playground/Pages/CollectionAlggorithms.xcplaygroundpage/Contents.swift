//: [Previous](@previous)

import Foundation

// Algoritmos para Colecciones

var myArray = [5,8,1,0,3,9,7,2,4,6]

let myDictionary = [5:"Cinco",
                    8:"Ocho",
                    1:"Uno",
                    0:"Cero",
                    3:"Tres",
                    9:"Nueve",
                    7:"Siete",
                    2:"Dos",
                    4:"Cuatro",
                    6:"Seis"]

let mySet: Set = [5,8,1,0,3,9,7,2,4,6]


// -Sort (Ordenación)

print(myArray)
myArray.sort()
print(myArray)

myArray.sort { (intA, intB) -> Bool in
    return intA > intB
}
print(myArray)

// myDictionary.sort() No soportada
// mySet.Sort() No soportada


// - Sorted (Ordenación)

print(myArray)
let myArraySorted = myArray.sorted()
print(myArray)
print(myArraySorted)

myArray.sorted { (intA, intB) -> Bool in
    return intA > intB
}

print(myArraySorted)

let mysortedDictionary = myDictionary.sorted { (elementA, elementB) -> Bool in
    return elementA.key < elementB.key
}

print(mysortedDictionary)

var mySortedSet = mySet.sorted()
print(mySortedSet)

mySortedSet = mySet.sorted { (intA, intB) -> Bool in
    return intA < intB
}
print(mySortedSet)

//: [Next](@next)
