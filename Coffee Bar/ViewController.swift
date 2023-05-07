//
//  ViewController.swift
//  Coffee Bar
//
//  Created by ARTEM on 07.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let button = signUpButton {
            button.addTarget(self, action: #selector(openSignUpController), for: .touchUpInside)
        } else {
            print("Error: signUpButton is nil")
        }
    }
    @objc func openSignUpController(){
        let story = UIStoryboard(name: "Main", bundle: nil)
        let controller = story.instantiateViewController(identifier: "SignUpViewController") as! SignUpViewController
        let navigation = UINavigationController(rootViewController: controller)
        self.view.addSubview(navigation.view)
        self.addChild(navigation)
        navigation.didMove(toParent: self)
    }


}

