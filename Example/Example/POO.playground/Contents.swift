import UIKit

struct cuadrados{
    
    var ancho = 10
    var alto = 10
    
    func area() -> Int {
        return ancho * alto
    }
    
}


var miCuadrado = cuadrados()

miCuadrado.ancho

var areaCuadrado = miCuadrado.ancho * miCuadrado.alto

miCuadrado.area()
