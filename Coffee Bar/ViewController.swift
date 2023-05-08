//
//  ViewController.swift
//  Coffee Bar
//
//  Created by ARTEM on 07.05.2023.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool){
     super.viewDidAppear(animated)
     if Auth.auth().currentUser != nil {
       self.performSegue(withIdentifier: "alreadyLogInSegue", sender: nil)
    }
    }


}

