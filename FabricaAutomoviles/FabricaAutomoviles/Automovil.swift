//
//  Automovil.swift
//  FabricaAutomoviles
//
//  Created by Daniel Cazorro Frias  on 12/1/24.
//

import Foundation

class Automovil{
    
    var color = "neutro"
    var numeroLlantas = 4
    var precio = 5000
    
    func encender() -> Bool {
        return true
    }
    
    func apagar() -> Bool {
        return false
    }
    
    func acelerar() -> String {
        return "Aceleración exitosa"
    }
    
}
