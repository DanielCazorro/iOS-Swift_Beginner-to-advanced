import UIKit

var numeros = [1,2,3,4,5,6,7,8,9,10]
var i = numeros.count - 1

repeat {
    
    numeros.remove(at: i)
    i -= 1
    print("Cantidad de Elementos: \(numeros.count)")
    print("i = \(i)")
    
}while(numeros.count > 0)

print("El arreglo está vacío, su cantidad de elementos es : \(numeros.count)")


var numeroAleatorio: Int
var n = 0
repeat {
    n += 1
    numeroAleatorio = Int(arc4random_uniform(100))
    print("El ciclo lleva \(n) cantidad de iteraciones")
    print("El número aleatorio: \(numeroAleatorio)")
    
}while(numeroAleatorio != 8)
