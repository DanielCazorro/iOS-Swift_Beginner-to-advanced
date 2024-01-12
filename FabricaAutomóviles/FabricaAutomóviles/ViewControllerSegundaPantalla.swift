//
//  ViewControllerSegundaPantalla.swift
//  FabricaAutomóviles
//
//  Created by Daniel Cazorro Frias  on 12/1/24.
//

import UIKit

class ViewControllerSegundaPantalla: UIViewController {
    
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    var tipoAutomovil: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch tipoAutomovil {
        case 0:
            print("Voy a crear un objeto automovil sencillo")
            
        case 1:
            print("Voy a crear un objeto automovil Mazda")
            
        default:
            print("Error")
        }
    }
    
    @IBAction func mostrarInformacion(_ sender: Any) {
    }
    
    @IBAction func encender(_ sender: Any) {
    }
    
    @IBAction func apagar(_ sender: Any) {
    }
    
    @IBAction func acelerar(_ sender: Any) {
    }
    
}
