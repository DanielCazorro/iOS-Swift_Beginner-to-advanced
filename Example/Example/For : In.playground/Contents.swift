import UIKit

var contadora = 0

// Los ciclos For siven para itinerar sobre una colección de datos/items y ejecutar un bloque de código por cada uno d elos items de la colección o rango

    //Variable  // Collection-range
for numero in 1...4 {
    contadora += 1
    print(numero)
}

var paises = ["MX", "EUA", "JP"]

for pais in paises {
    print(pais)
}


var paisesDeDiccionario = ["MX":"Mexico", "EUA":"Estados Unidos", "JP":"Japon"]

for (pais,significado) in paisesDeDiccionario {
    print("\(pais) --- \(significado)")
}

var numeros = [1,2,3,4,5,6,7,8,9]
var suma = 0

for numero in numeros {
    suma = numero + suma
}

print("La suma de los números es: \(suma)")
