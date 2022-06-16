//
//  ViewController.swift
//  Message
//
//  Created by C94279A on 11/02/22.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
  
  private var loginScreen: LoginScreen?
  
  override func loadView() {
    loginScreen = LoginScreen()
    view = loginScreen
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = UIColor(red: 58.0/255.0, green: 132.0/255.0, blue: 123.0/255.0, alpha: 1)
  }
}

