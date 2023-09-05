//
//  LoginViewController.swift
//  UIKit_Masterproject_just_code
//
//  Created by Oscar Rembold on 02.09.23.
//

import UIKit

class RegisterViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    private let languages = ["Deutschland", "Österreich", "Schweiz"]
    
    
    private let horizontalPadding = 10.0
    
    private let urLogo: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "ur_logo"))
        return imageView
    }()
    
    
    private let registerLabel: UILabel = {
        let label = UILabel()
        label.text = "Register"
        label.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        return label
    }()
    
    private let firstnameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Firstname"
        textField.borderStyle = .roundedRect
        return textField
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
    
    private let forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Forgot password?", for: .normal)
        button.tintColor = .systemBlue
        return button
    }()
    
    private let languagePicker: UIPickerView = {
        let uiPicker = UIPickerView()
        return uiPicker
    }()
    
    private let registerButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Register", for: .normal)
        button.layer.cornerRadius = 5
        button.backgroundColor = .black
        button.tintColor = .white
        return button
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.tintColor = .red
        return button
    }()
    
    private let loginText: UILabel = {
        let text = UILabel()
        text.text = "Already have an account?"
        text.tintColor = .black
        return text
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add subviews
        view.addSubview(urLogo)
        view.addSubview(registerLabel)
        view.addSubview(firstnameTextField)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(languagePicker)
        view.addSubview(forgotPasswordButton)
        view.addSubview(registerButton)
        view.addSubview(loginButton)
        view.addSubview(loginText)
        
        self.languagePicker.delegate = self
        self.languagePicker.dataSource = self

        // Set up constraints
        urLogo.translatesAutoresizingMaskIntoConstraints = false
        registerLabel.translatesAutoresizingMaskIntoConstraints = false
        firstnameTextField.translatesAutoresizingMaskIntoConstraints = false
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        languagePicker.translatesAutoresizingMaskIntoConstraints = false
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        loginText.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            urLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            urLogo.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            urLogo.widthAnchor.constraint(equalToConstant: 240),
            urLogo.heightAnchor.constraint(equalToConstant: 175),
            
            registerLabel.topAnchor.constraint(equalTo: urLogo.bottomAnchor, constant: 50),
            registerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            
        
            firstnameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstnameTextField.topAnchor.constraint(equalTo: urLogo.bottomAnchor, constant: 120),
            firstnameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: horizontalPadding),
            firstnameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -horizontalPadding),
            
            emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailTextField.topAnchor.constraint(equalTo: firstnameTextField.bottomAnchor, constant: 25),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: horizontalPadding),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -horizontalPadding),

            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 25),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: horizontalPadding),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -horizontalPadding),
            
            forgotPasswordButton.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 5),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -horizontalPadding),
            
            languagePicker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            languagePicker.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 15),
            languagePicker.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: horizontalPadding),
            languagePicker.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -horizontalPadding),
            languagePicker.heightAnchor.constraint(equalToConstant: 70),

            registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            registerButton.topAnchor.constraint(equalTo: languagePicker.bottomAnchor, constant: 15),
            registerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: horizontalPadding),
            registerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -horizontalPadding),
            
            loginButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            loginButton.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -horizontalPadding),
            
            loginText.centerYAnchor.constraint(equalTo: loginButton.centerYAnchor),
            loginText.trailingAnchor.constraint(equalTo: loginButton.leadingAnchor, constant: -10),
            loginText.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 70),
        ])
        
        
        loginButton.addTarget(self, action: #selector(goToLogin), for: .touchUpInside)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return languages.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return languages[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        return
    }
    
    @objc func goToLogin(sender: UIButton!) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "loginViewController") as! ViewController
        nextViewController.modalPresentationStyle = .fullScreen
        self.present(nextViewController, animated:true, completion:nil)
    }


}


