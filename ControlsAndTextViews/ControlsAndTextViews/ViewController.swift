//
//  ViewController.swift
//  ControlsAndTextViews
//
//  Created by Daniel Cazorro Frias  on 11/1/24.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets -
    @IBOutlet weak var myButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Buttons
        
        myButton.setTitle("Mi Botón", for: .normal)
        myButton.backgroundColor = .blue
        myButton.setTitleColor(.white, for: .normal)
    }

    // MARK: - Actions -

    @IBAction func myButtonAction(_ sender: Any) {
        
        if myButton.backgroundColor == .blue {
            myButton.backgroundColor = .green
        } else {
            myButton.backgroundColor = .blue
        }
    }
}

