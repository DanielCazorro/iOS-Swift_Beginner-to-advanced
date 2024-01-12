//
//  File.swift
//  FabricaAutomoviles
//
//  Created by Daniel Cazorro Frias  on 12/1/24.
//

import Foundation

class AutomovilElectrico: Automovil {
    var porcentajeBateria = 100
    
    func cargarBateria() -> String {
        porcentajeBateria = 100
        return "Carga exitosa"
    }
}
