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
        
        Database.database().reference().child("this").child("\(Date())").setValue("that")

        Database.database().reference().child("this").observe(.value) { (snapshot) in
            print("snap")
            print(snapshot.value ?? "no snap nigga")
            print("snap")
        }
        print("ready")
        Auth.auth().signInAnonymously { (user, error) in
            print("auth")
            print("User ID: " + (user?.uid ?? "no User ID"))
            print(error?.localizedDescription ?? "no Error")
            print("auth")
        }
        print("ready")
    }
    
}

