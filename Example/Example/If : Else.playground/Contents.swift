import UIKit

var edad = 19
var cantidadDinero = 1000
var sexoFemenino = true

// False        // True                 // False
if (edad >= 18 || cantidadDinero > 250) && (sexoFemenino) {
    print("Si puedes entrar al bar ya que eres mayor de edad o tienes dinero")
} else {
    print("No puedes entrar al bar ya que no eres mayor de eadd")
}


if edad >= 18 {
    print("Si puedes entrar")
    if cantidadDinero > 250 {
        print("Y además tienes dinero")
        if sexoFemenino {
            print("Eres el cliente ideal para este bar")
        }
    }
}
