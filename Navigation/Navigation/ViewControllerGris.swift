//
//  ViewControllerGris.swift
//  Navigation
//
//  Created by Daniel Cazorro Frias  on 12/1/24.
//

import UIKit

class ViewControllerGris: UIViewController {

    var titulo: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tituloFinal = titulo{
            self.title = tituloFinal
        } else {
            title = "ERROR"
        }
        
    }
    

}
