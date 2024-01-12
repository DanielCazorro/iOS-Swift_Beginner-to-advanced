//
//  ViewControllerSegundaPantalla.swift
//  FabricaAutomoviles
//
//  Created by Daniel Cazorro Frias  on 12/1/24.
//

import UIKit

class ViewControllerSegundaPantalla: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    var tipoAutomovil:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switch tipoAutomovil! {
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
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
