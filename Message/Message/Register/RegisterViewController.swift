//
//  RegisterViewController.swift
//  Message
//
//  Created by Maria Tupich on 16/06/22.
//

import UIKit

class RegisterViewController: UIViewController {
  
  private var registerScreen: RegisterScreen?
  
  override func loadView() {
    registerScreen = RegisterScreen()
    view = registerScreen
  }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
