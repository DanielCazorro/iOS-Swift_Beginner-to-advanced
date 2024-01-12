//
//  ViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Daniel Cazorro Frias  on 12/1/24.
//

import UIKit
import WebKit
import MapKit

class ViewController: UIViewController {
    
    // IBOutlets
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myFakeView: UIView!
    
    @IBOutlet weak var myMap: MKMapView!
    @IBOutlet weak var myWebView: WKWebView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myWebView.load(URLRequest(url: URL(string: "https://google.es")!))
    }
    
    // IBActions
    @IBAction func myButtonAction(_ sender: Any) {
        myFakeView.isHidden = true
    }
    
}

