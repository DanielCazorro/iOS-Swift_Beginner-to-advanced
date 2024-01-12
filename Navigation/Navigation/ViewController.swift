//
//  ViewController.swift
//  Navigation
//
//  Created by Daniel Cazorro Frias  on 12/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    // Variable para almacenar el nombre del color
    private var colourName: String = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Puedes agregar configuraciones adicionales al cargar la vista principal
    }
    
    // Función para configurar el color y realizar la transición a ViewControllerRosa
    private func performSegueWithColor(_ colorName: String) {
        colourName = colorName
        performSegue(withIdentifier: "VCRosa", sender: self)
    }
    
    // Acciones de los botones
    
    @IBAction func botonNegro(_ sender: Any) {
        performSegueWithColor("Negro")
    }
    
    @IBAction func botonRosa(_ sender: Any) {
        performSegueWithColor("Rosa")
    }
    
    @IBAction func botonGris(_ sender: Any) {
        performSegueWithColor("Gris")
    }
    
    // Preparar la transición y pasar datos al ViewControllerRosa
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "VCRosa" {
            if let destino = segue.destination as? ViewControllerRosa {
                destino.titulo = colourName
            }
        }
    }
}
