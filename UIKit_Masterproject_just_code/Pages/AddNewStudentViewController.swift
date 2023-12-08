//
//  LoginViewController.swift
//  UIKit_Masterproject_just_code
//
//  Created by Oscar Rembold on 02.09.23.
//

import UIKit

class AddNewStudentViewController: UIViewController {
    
    var onAddStudent: ((StudentModel) -> Void)?
    
    private lazy var urLogo: UIImageView = {
            let imageView = UIImageView(image: UIImage(named: "ur_logo")) // Replace "ur_logo" with the actual image name
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.contentMode = .scaleAspectFit
            return imageView
        }()

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Add new student"
        label.font = UIFont.systemFont(ofSize: 28, weight: .semibold)
        return label
    }()
    
    private lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Back", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        return button
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true

        view.backgroundColor = .white

        setupViews()
    }

    private func setupViews() {
        
        view.addSubview(urLogo)
        view.addSubview(titleLabel)
        view.addSubview(backButton)
        
        NSLayoutConstraint.activate([
            urLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            urLogo.topAnchor.constraint(equalTo: view.topAnchor, constant: 110),
            urLogo.widthAnchor.constraint(equalToConstant: 145),
            urLogo.heightAnchor.constraint(equalToConstant: 105),
            
            titleLabel.topAnchor.constraint(equalTo: urLogo.bottomAnchor, constant: 50),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            
            
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            backButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
            
        ])
    }
    
    @objc private func saveButtonTapped() {
        let newStudent = StudentModel(firstname: "", lastname: "", universityMail: "", age: 0, semesterCount: 0, studentNumber: 0, courseOfStudy: "")
        onAddStudent?(newStudent)
    }
    
    @objc private func backButtonTapped() {
        let newStudent = StudentModel(firstname: "", lastname: "", universityMail: "", age: 0, semesterCount: 0, studentNumber: 0, courseOfStudy: "")
        onAddStudent?(newStudent) 
        navigationController?.popViewController(animated: true)
    }
}
