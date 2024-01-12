//
//  ViewControllerRosa.swift
//  Navigation
//
//  Created by Daniel Cazorro Frias  on 12/1/24.
//

import UIKit

class ViewControllerRosa: UIViewController {
    
    // Variable para almacenar el título del color
    var titulo: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configurar la vista con el color correspondiente al título
        configureViewWithColor()
    }
    
    // Función para configurar la vista con el color correspondiente al título
    private func configureViewWithColor() {
        if let tituloFinal = titulo {
            self.title = tituloFinal
        }
        
        switch titulo {
        case "Negro":
            view.backgroundColor = .black
        case "Rosa":
            view.backgroundColor = .magenta
        case "Gris":
            view.backgroundColor = .gray
        default:
            view.backgroundColor = .white
        }
    }
}
