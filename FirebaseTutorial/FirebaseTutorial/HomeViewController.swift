//
//  HomeViewController.swift
//  FirebaseTutorial
//
//  Created by Daniel Cazorro Frias  on 15/1/24.
//

import UIKit
import FirebaseAuth

enum ProviderType: String {
    case basic
    case google
    case facebook
    case apple
}

class HomeViewController: UIViewController {
    
    // IBOutlet
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var providerLabel: UILabel!
    @IBOutlet weak var closeSessionButton: UIButton!
    
    private let email: String
    private let provider: ProviderType
    
    init(email: String, provider: ProviderType) {
        self.email = email
        self.provider = provider
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Inicio"
        
        navigationItem.setHidesBackButton(true, animated: true)
        
        emailLabel.text = email
        providerLabel.text = provider.rawValue
        
        // Guardamos los datos del usuario
        
        let defaults = UserDefaults.standard
        defaults.set(email, forKey: "email")
        defaults.set(provider.rawValue, forKey: "provider")
        defaults.synchronize()
    }
    
    // IBAction
    @IBAction func closeSessionButtonAction(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        defaults.removeObject(forKey: "email")
        defaults.removeObject(forKey: "provider")
        defaults.synchronize()
        
        switch provider {
            
        case .basic, .google, .facebook, .apple:
            do {
                try Auth.auth().signOut()
                navigationController?.popViewController(animated: true)
            } catch {
                // Se ha producido un error
            }
            
        }
        
    }
    
    
}
