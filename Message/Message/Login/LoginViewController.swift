//
//  ViewController.swift
//  Message
//
//  Created by C94279A on 11/02/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    var loginScreen: LoginScreen?
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
    }


}

