import UIKit

/*
 var numeroAleatorio:Int
 numeroAleatorio = Int(arc4random_uniform(100))
 */

func holaMundo() {
    print("Hola mundo")
}

// holaMundo()

func sumaDosNumerosCualquiera(){

    var numero = 2 + 2
    
}

// sumaDosNumerosCualquiera()

func cuadradoDe(numero:Int) {
    
    let numeroCuadrado = numero * numero
    
    print(numeroCuadrado)
}

// cuadradoDe(numero: 10)


func cuboDe(numero:Int) -> Int{
    
    let numeroCubo = numero * numero * numero
    return numeroCubo
}

_ = cuboDe(numero: 10)


func saludarAlumno(nombre:String, mensaje:String = "te damos la bienvenida al curso de iOS con Swift"){
    
    print("Hola \(nombre) \(mensaje)")
    
}

// saludarAlumno(nombre: "Maria", mensaje: "y adios")

func listaNombres () -> [String]{
    
    let arregloNombre = ["Jose", "Maria", "Pedro"]
    return arregloNombre
}

// var nombres = listaNombres()

// Nombre de Parametros Internos y Externos

func califiacionPRomedio(matematicas materiaUno:Double, quimica materiaDos:Double, fisica materiaTres:Double) -> Double {
    
    return (materiaUno + materiaDos + materiaTres) / 3
    
}

// let miCalificacionPromedioMaterias = califiacionPRomedio(matematicas: 81, quimica: 45, fisica: 60)

// print(miCalificacionPromedioMaterias)
