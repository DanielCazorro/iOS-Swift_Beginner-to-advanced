//
//  ViewController.swift
//  ExampleProyect
//
//  Created by Daniel Cazorro Frias  on 11/1/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiqueta: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        etiqueta.text = "Ya he cambiado"
        etiqueta.text = "Ya he cambiado por segunda vez"
        etiqueta.text = "Ya he cambiado por tercera vez"
        etiqueta.text = "Ya he cambiado por cuarta vez"
    }
    
    @IBAction func cambiarTexto(_ sender: Any) {
        
        etiqueta.text = "Hola Mundo Cruel"

    }
    

}

