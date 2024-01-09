import UIKit

// Sintaxis Enumeración
enum PersonalData {
    case name
    case surname
    case adrees
    case phone
}


var currentData: PersonalData = .name
var input = "Daniel"

currentData = .phone
input = "6567565757"

// Enumeraciones con valores asociados

enum ComplexPersonalData {
    case name(String), surname(String), adrees(String, Int), phone(Int)
}

var complexCurrentData: ComplexPersonalData = .name("Daniel")

complexCurrentData = .adrees("La paz", 8)


// Enumeraciones con el mismo tipo de valor

enum RawPersonalData: String {
    case name = "Nombre", surname = "Apellidos", adress = "Dirección", phone = "Número de teléfono"
}

RawPersonalData.adress.rawValue
