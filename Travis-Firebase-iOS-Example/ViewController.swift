//
//  ViewController.swift
//  Travis-Firebase-iOS-Example
//
//  Created by Wikipedia Brown on 1/13/18.
//  Copyright © 2018 Wikipedia Brown. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        Database.database().reference().observe(.value) { (snapshot) in
            print(snapshot.value ?? "no snap nigga")
        }
        Auth.auth().signIn(withEmail: "thoings", password: "throngs") { (user, error) in
            print("auth")
            print(user?.uid ?? "no User ID")
            print(error?.localizedDescription ?? "no User ID")
            print("auth")
        }
    }
    
}

