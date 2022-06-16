//
//  LoginScreen.swift
//  Message
//
//  Created by Maria Tupich on 14/06/22.
//

import UIKit

protocol LoginScreenProtocol: AnyObject {
  func builHierarchy()
  func setupScreenConstraints()
  func setupAdicionalConfiguration()
}

class LoginScreen: UIView, LoginScreenProtocol {
  lazy var stackView: UIStackView = {
    let stack = UIStackView()
    stack.translatesAutoresizingMaskIntoConstraints = false
    stack.axis = .vertical
    stack.spacing = 10.0
    stack.alignment = .fill
    stack.distribution = .fillEqually
    return stack
  }()
  
  lazy var titleLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textColor = .white
    label.font = UIFont.boldSystemFont(ofSize: 40)
    label.text = "Login"
    label.textAlignment = .center
    return label
  }()
  
  lazy var logoAppImageView: UIImageView = {
    let image = UIImageView()
    image.contentMode = .scaleAspectFit
    image.translatesAutoresizingMaskIntoConstraints = false
    image.image = UIImage(named: "logo")
    image.tintColor = .red
    return image
  }()
  
  
  lazy var emailTextField: UITextField = {
    let tf = UITextField()
    tf.translatesAutoresizingMaskIntoConstraints = false
    tf.autocorrectionType = .no
    tf.backgroundColor = .white
    tf.borderStyle = .roundedRect
    tf.keyboardType = .emailAddress
    tf.placeholder = "Digite seu email"
    tf.textColor = .darkGray
    return tf
  }()
  
  lazy var passwordTextField: UITextField = {
    let tf = UITextField()
    tf.translatesAutoresizingMaskIntoConstraints = false
    tf.autocorrectionType = .no
    tf.backgroundColor = .white
    tf.borderStyle = .roundedRect
    tf.keyboardType = .default
    tf.isSecureTextEntry = true
    tf.placeholder = "Digite sua senha"
    tf.textColor = .darkGray
    return tf
  }()
  
  lazy var logarButton: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Logar", for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
    button.setTitleColor(.white, for: .normal)
    button.clipsToBounds = true
    button.layer.cornerRadius = 7.5
    button.backgroundColor = UIColor(red: 3/255, green: 58/255, blue: 51/255, alpha: 1.0)
    return button
  }()
  
  lazy var registerButton: UIButton = {
    let register = UIButton()
    register.translatesAutoresizingMaskIntoConstraints = false
    return register
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupAdicionalConfiguration()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func builHierarchy() {
    addSubview(titleLabel)
    addSubview(logoAppImageView)
    addSubview(stackView)
    stackView.addArrangedSubview(emailTextField)
    stackView.addArrangedSubview(passwordTextField)
    stackView.addArrangedSubview(logarButton)
    stackView.addArrangedSubview(registerButton)
  }
  
  func setupScreenConstraints() {
    NSLayoutConstraint.activate([
      titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
      titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
      titleLabel.heightAnchor.constraint(equalToConstant: 40),
      
      logoAppImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
      logoAppImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
      logoAppImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
      logoAppImageView.heightAnchor.constraint(equalToConstant: 180),
      
      stackView.topAnchor.constraint(equalTo: logoAppImageView.bottomAnchor, constant: 16),
      stackView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 24),
      stackView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -24),
    ])
  }
  
  func setupAdicionalConfiguration() {
    builHierarchy()
    setupScreenConstraints()
  }
  
}
