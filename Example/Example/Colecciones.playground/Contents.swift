import UIKit
                    //0,1,2
var arregloNumeros = [1,2,3]

let arregloNumerosInmutable = [3,2,1]

//  Agregar valores
arregloNumeros.append(5)
arregloNumeros.insert(4, at: 3)

//  Eliminar valores
arregloNumeros.removeLast()
arregloNumeros.remove(at: 3)


// Eliminar todo el arreglo
arregloNumeros.removeAll()

print(arregloNumeros)
print(arregloNumerosInmutable[0])

var arregloVacio: [Int] = []
