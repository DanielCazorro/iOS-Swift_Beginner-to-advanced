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
            
            self.setup(user: user)
            
        } failures: { error in
            
            self.activityIndicator.stopAnimating()

            self.nameLable.text = error.debugDescription
        }
    }
    
    @IBAction func addUserAction(_ sender: Any) {
        
        let newUser = NewUser(name: "Daniel", email: "daniel@test.com", gender: "Male", status: "Active")
        
        activityIndicator.startAnimating()
        
        NetworkingProvider.shared.addUser(user: newUser) { (user) in
            
            self.activityIndicator.stopAnimating()
            
            self.setup(user: user)
            
        } failures: { error in
            
            self.activityIndicator.stopAnimating()

            self.nameLable.text = error.debugDescription
        }
    }
    
    @IBAction func updateUserAction(_ sender: Any) {
        
        let newUser = NewUser(name: "Daniel San", email: nil, gender: nil, status: nil)
        
        activityIndicator.startAnimating()
        
        NetworkingProvider.shared.updateUser(id: 2138680, user: newUser) { (user) in
            
            self.activityIndicator.stopAnimating()
            
            self.setup(user: user)
            
        } failures: { error in
            
            self.activityIndicator.stopAnimating()

            self.nameLable.text = error.debugDescription
        }
    }
    
    @IBAction func deleteUserAction(_ sender: Any) {
        activityIndicator.startAnimating()
        
        let id = 1828
        
        NetworkingProvider.shared.deleteUser(id: id) {
            self.activityIndicator.stopAnimating()
            
            self.nameLable.text = "Se ha borrado el usuario con ID\(id)"
        } failures: { error in
            self.activityIndicator.stopAnimating()
            
            self.nameLable.text = error.debugDescription
        }

        
    }
    
    private func setup(user: User) {
        
        nameLable.text = user.name
        emailLabel.text = user.email
        idLabel.text = user.id?.description
    }
}

