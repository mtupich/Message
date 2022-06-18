//
//  ViewController.swift
//  Message
//
//  Created by C94279A on 11/02/22.
//

import UIKit

class LoginViewController: UIViewController, LoginTextFieldsProtocol {

  private var loginScreen: LoginScreen?
  
  override func loadView() {
    loginScreen = LoginScreen()
    view = loginScreen
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    loginScreen?.setupTextFieldDelegate(delegate: self)
    loginScreen?.delegate(delegate: self)
  }
}

extension LoginViewController: UITextFieldDelegate {
  
  func textFieldDidBeginEditing(_ textField: UITextField) {
    print("textFieldDidBeginEditing")
  }
  
  func textFieldDidEndEditing(_ textField: UITextField) {
    print("textFieldDidEndEditing")
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    // faz o teclado baixar quando o usuario aperta o enter (return)
    print("textFieldShouldReturn")
    textField.resignFirstResponder()
    return true
  }
}

extension LoginViewController {
  func actionLoginBtn() {
    let homeController = HomeViewController()
    navigationController?.pushViewController(homeController, animated: true)
  }
  
  func actionRegisterBtn() {
    let registerController = RegisterViewController()
    navigationController?.pushViewController(registerController, animated: true)
  }
  
  
}

