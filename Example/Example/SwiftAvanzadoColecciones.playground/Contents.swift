import UIKit

// Consjuntos

var mySet = Set<String>()
let mySet2: Set<String> = ["Daniel", "San", "31", "Daniel"]

// Inserción de uno en uno
mySet.insert("Daniel")
mySet.insert("31")
mySet.insert("Daniel")
print(mySet)

// Acceso

if mySet.contains("Daniel") {
    print("Existe")
} else {
    print("No existe")
}

// Modificación

mySet.remove("31")
print(mySet)

// Acceso y Modificación por índice

if let index = mySet.firstIndex(of: "Daniel") {
    mySet.remove(at: index)
}
print(mySet)

// Iteración

mySet.insert("32")
mySet.insert("Pedro")
mySet.insert("Rodriguez")
mySet.insert("Hola mundo")

for myElement in mySet {
    print(myElement)
}

// Operaciones de conjunto

let myIntSet: Set = [1,2,3,4,5]
let myIntSet2: Set = [0,2,3,6,7]

// Intersección
print(myIntSet.intersection(myIntSet2))

// Diferencia simétrica
print(myIntSet.symmetricDifference(myIntSet2))

// Unión
print(myIntSet.union(myIntSet2))

// Sustracción
print(myIntSet.subtracting(myIntSet2))
