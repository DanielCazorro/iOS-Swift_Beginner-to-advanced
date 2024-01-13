//
//  ViewController2.swift
//  CiclosVida
//
//  Created by Daniel Cazorro Frias  on 13/1/24.
//

import UIKit

class ViewController2: ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Estoy en VC2 y se activó -> \(#function)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Estoy en VC2 y se activó -> \(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Estoy en VC2 y se activó -> \(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Estoy en VC2 y se activó -> \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Estoy en VC2 y se activó -> \(#function)")
    }
    
}
