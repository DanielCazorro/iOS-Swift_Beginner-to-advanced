//
//  ViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Daniel Cazorro Frias  on 12/1/24.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlets
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myFakeView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func myButtonAction(_ sender: Any) {
        myFakeView.isHidden = true
    }
    
}

