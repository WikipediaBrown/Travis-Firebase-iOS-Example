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
        Auth.auth().signInAnonymously { (user, error) in
            print(user?.uid)
            print(error?.localizedDescription)
        }
    }
    
}

