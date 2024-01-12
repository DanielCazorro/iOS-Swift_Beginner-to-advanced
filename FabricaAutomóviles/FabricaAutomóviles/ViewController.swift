//
//  ViewController.swift
//  FabricaAutomóviles
//
//  Created by Daniel Cazorro Frias  on 12/1/24.
//

import UIKit

public class ViewController: UIViewController {

    var tipoAutomovil: Int?
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func crearAutomovil(_ sender: Any) {
        tipoAutomovil = 0
        performSegue(withIdentifier: "segueSegundaPantalla", sender: self)
    }
    
    @IBAction func crearAutomovilMazda(_ sender: Any) {
        tipoAutomovil = 1
        performSegue(withIdentifier: "segueSegundaPantalla", sender: self)
    }
    
    public override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destino = segue.destination as? ViewControllerSegundaPantalla {
            destino.tipoAutomovil = self.tipoAutomovil
        }
    }
    
}

