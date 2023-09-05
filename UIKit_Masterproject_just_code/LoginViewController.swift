//
//  ViewController.swift
//  UIKit_Masterproject_just_code
//
//  Created by Oscar Rembold on 22.08.23.
//

import UIKit

class ViewController: UIViewController {
    
    private let horizontalPadding = 10.0
    
    private let urLogo: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "ur_logo"))
        return imageView
    }()
    
    private let loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        return label
    }()

    private let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "E-Mail"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = 5
        button.backgroundColor = .black
        button.tintColor = .white
        return button
    }()
    
    private let forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Forgot password?", for: .normal)
        button.tintColor = .systemBlue
        return button
    }()
    
    private let registerButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign up", for: .normal)
        button.tintColor = .systemBlue
        return button
    }()
    
    private let registerText: UILabel = {
        let text = UILabel()
        text.text = "Don't have an account yet?"
        text.tintColor = .black
        return text
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add subviews
        view.addSubview(urLogo)
        view.addSubview(loginLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(registerButton)
        view.addSubview(forgotPasswordButton)
        view.addSubview(loginButton)
        view.addSubview(registerText)

        // Set up constraints
        urLogo.translatesAutoresizingMaskIntoConstraints = false
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        registerText.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            urLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            urLogo.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            urLogo.widthAnchor.constraint(equalToConstant: 240),
            urLogo.heightAnchor.constraint(equalToConstant: 175),
            
            loginLabel.topAnchor.constraint(equalTo: urLogo.bottomAnchor, constant: 50),
            loginLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            
            
            emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailTextField.topAnchor.constraint(equalTo: urLogo.bottomAnchor, constant: 120),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: horizontalPadding),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -horizontalPadding),
            
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 25),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: horizontalPadding),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -horizontalPadding),
    
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 25),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: horizontalPadding),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -horizontalPadding),
            
            forgotPasswordButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 5),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -horizontalPadding),
            
            registerButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            registerButton.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -horizontalPadding),
            
            registerText.centerYAnchor.constraint(equalTo:  registerButton.centerYAnchor),
            registerText.trailingAnchor.constraint(equalTo: registerButton.leadingAnchor, constant: -10),
            registerText.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 70),
        ])
        
        registerButton.addTarget(self, action: #selector(goToRegister), for: .touchUpInside)
    }
    
    @objc func goToRegister(sender: UIButton!) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "registerViewController") as! RegisterViewController
        nextViewController.modalPresentationStyle = .fullScreen
        self.present(nextViewController, animated:true, completion:nil)
    }


}

