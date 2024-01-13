//
//  CreateConstraintsViewController.swift
//  AdvancedAutoLayout
//
//  Created by Daniel Cazorro Frias  on 13/1/24.
//

import UIKit

class CreateConstraintsViewController: ViewController {
    
    @IBOutlet weak var yellowView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Constraints de tamaño  programáticamente
        
        yellowView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        yellowView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        // Constraints de posición programáticamente
        
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addConstraint(NSLayoutConstraint(item: yellowView!, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1000, constant: 16))
        
        yellowView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
    }
    
}
