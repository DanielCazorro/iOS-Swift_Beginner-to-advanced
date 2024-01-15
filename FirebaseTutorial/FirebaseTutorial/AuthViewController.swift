//
//  AuthViewController.swift
//  FirebaseTutorial
//
//  Created by Daniel Cazorro Frias  on 15/1/24.
//

import UIKit
import FirebaseAnalytics

class AuthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Analytics Event
        Analytics.logEvent("InitScreen", parameters: ["message":"Integración de Firebase Completa"])
    }

}
