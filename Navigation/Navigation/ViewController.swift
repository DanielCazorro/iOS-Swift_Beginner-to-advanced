//
//  ViewController.swift
//  Navigation
//
//  Created by Daniel Cazorro Frias  on 12/1/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func botonNegro(_ sender: Any) {
        performSegue(withIdentifier: "VCNegro", sender: self)
        print("Soy el botón negro")
    }
    
    @IBAction func botonRosa(_ sender: Any) {
        performSegue(withIdentifier: "VCRosa", sender: self)
        print("Soy el botón rosa")

    }
    
    @IBAction func botonAzul(_ sender: Any) {
        performSegue(withIdentifier: "VSGris", sender: self)
        print("Soy el botón azul")

    }
}

