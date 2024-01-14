//
//  ViewController.swift
//  Networking
//
//  Created by Daniel Cazorro Frias  on 14/1/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLable.text = ""
        nameLable.numberOfLines = 0
        emailLabel.text = ""
        emailLabel.numberOfLines = 0
        idLabel.text = ""
        
        activityIndicator.hidesWhenStopped = true
        activityIndicator.stopAnimating()
    }

    @IBAction func getUserAction(_ sender: Any) {
        
        activityIndicator.startAnimating()
        
        NetworkingProvider.shared.getUser(id: 2138680) { (user) in
            
            self.activityIndicator.stopAnimating()
            
            self.nameLable.text = user.name
            self.emailLabel.text = user.email
            self.idLabel.text = user.id?.description
            
        } failures: { error in
            
            self.activityIndicator.stopAnimating()

            self.nameLable.text = error.debugDescription
        }
    }
    
    @IBAction func addUserAction(_ sender: Any) {
    }
    
}

