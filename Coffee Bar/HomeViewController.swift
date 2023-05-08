//
//  HomeViewController.swift
//  Coffee Bar
//
//  Created by ARTEM on 08.05.2023.
//

import UIKit
import SwiftUI
class HomeViewController: ViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = UIHostingController(rootView: ContentView())
        vc.modalPresentationStyle = .fullScreen
        navigationItem.backButtonTitle = ""
        DispatchQueue.main.async { [weak self] in
            self?.present(vc, animated: false, completion: nil)
        }
    }
}
