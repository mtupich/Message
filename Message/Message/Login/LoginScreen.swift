//
//  LoginScreen.swift
//  Message
//
//  Created by C94279A on 11/02/22.
//

import UIKit

class LoginScreen: UIView {
    
    lazy var titleLabel: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.largeContentTitle = "Login"
        return title
    }()
    
    lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var emailTextField: UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        return email
    }()
    
    lazy var passwordTextField: UITextField = {
        let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        return password
    }()
    
    lazy var logarButton: UIButton = {
        let logar = UIButton()
        logar.translatesAutoresizingMaskIntoConstraints = false
        return logar
    }()
    
    lazy var registerButton: UIButton = {
        let register = UIButton()
        register.translatesAutoresizingMaskIntoConstraints = false
        return register
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubviews()
        self.setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configTableProtocols(dataSource: UITableViewDataSource, delegate: UITableViewDelegate) {
        
    }
    
    func addSubviews() {
        self.addSubview(titleLabel)
        self.addSubview(imageView)
        self.addSubview(emailTextField)
        self.addSubview(passwordTextField)
        self.addSubview(logarButton)
        self.addSubview(registerButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            self.titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 10),
            self.titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20),
            self.titleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
        
    }
    
    
}
