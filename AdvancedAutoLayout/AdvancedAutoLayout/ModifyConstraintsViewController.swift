//
//  ModifyConstraintsViewController.swift
//  AdvancedAutoLayout
//
//  Created by Daniel Cazorro Frias  on 13/1/24.
//

import UIKit

class ModifyConstraintsViewController: ViewController {

    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        heightConstraint.constant = 300
        
        topConstraint.constant = 64
    }
    
}
