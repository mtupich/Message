//
//  RegisterScreen.swift
//  Message
//
//  Created by Maria Tupich on 18/06/22.
//

import UIKit

class RegisterScreen: UIView {
  // could be just the variable, but here were using a method to organized
  
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
    label.text = "Registre-se"
    label.textAlignment = .center
    return label
  }()
  
  lazy var logoAppImageView: UIImageView = {
    // withRenderingMode -> Returns a new version of the image that uses the specified rendering mode.
    let image = UIImageView()
    image.translatesAutoresizingMaskIntoConstraints = false
    image.image = UIImage(named: "logo")?.withRenderingMode(.alwaysTemplate)
    image.tintColor = .green
    image.contentMode = .scaleAspectFit
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
  
  lazy var loginButton: UIButton = {
    let btn = UIButton()
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.setTitle("Registrar", for: .normal)
    btn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
    btn.setTitleColor(.white, for: .normal)
    btn.clipsToBounds = true
    btn.layer.cornerRadius = 7.5
    btn.backgroundColor = UIColor(red: 3/255, green: 58/255, blue: 51/255, alpha: 1.0)
    btn.addTarget(self, action: #selector(didTapLoginBtn), for: .touchUpInside)
    return btn
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupAdicionalConfiguration()
    backgroundColor = UIColor(red: 58.0/255.0, green: 132.0/255.0, blue: 123.0/255.0, alpha: 1)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  @objc private func didTapLoginBtn(){

  }
  
  func builHierarchy() {
    addSubview(titleLabel)
    addSubview(logoAppImageView)
    addSubview(stackView)
    stackView.addArrangedSubview(emailTextField)
    stackView.addArrangedSubview(passwordTextField)
    stackView.addArrangedSubview(loginButton)
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
  
  func setupTextFieldDelegate(delegate: UITextFieldDelegate){
    emailTextField.delegate = delegate
    passwordTextField.delegate = delegate
  }


}
