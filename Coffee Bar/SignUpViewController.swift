//
//  SignUpViewController.swift
//  Coffee Bar
//
//  Created by ARTEM on 07.05.2023.
//

import UIKit
import Firebase

class SignUpViewController: ViewController{
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBAction func signUpAct(_ sender: Any) {
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!){ (user, error) in
            if error == nil{
                self.performSegue(withIdentifier: "signUpHomeSegue", sender: self)
         }
         else{
           let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
           let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
               }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
