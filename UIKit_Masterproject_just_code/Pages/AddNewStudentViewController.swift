//
//  LoginViewController.swift
//  UIKit_Masterproject_just_code
//
//  Created by Oscar Rembold on 02.09.23.
//

import UIKit

class AddNewStudentViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    var onAddStudent: ((StudentModel) -> Void)?
    
    var availableCoursesOfStudy = ["Physics", "Mathematics", "Computer science", "English"]
    
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
    
    
    private lazy var pickerView: UIPickerView = {
        let pickerView = UIPickerView()
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        return pickerView
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
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self

        view.backgroundColor = .white

        setupViews()
    }

    private func setupViews() {
        
        view.addSubview(urLogo)
        view.addSubview(titleLabel)
        view.addSubview(pickerView)
        view.addSubview(backButton)
        
        NSLayoutConstraint.activate([
            urLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            urLogo.topAnchor.constraint(equalTo: view.topAnchor, constant: 110),
            urLogo.widthAnchor.constraint(equalToConstant: 145),
            urLogo.heightAnchor.constraint(equalToConstant: 105),
            
            titleLabel.topAnchor.constraint(equalTo: urLogo.bottomAnchor, constant: 50),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            
            pickerView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 40),
            pickerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pickerView.heightAnchor.constraint(equalToConstant: 80),
            
            backButton.topAnchor.constraint(equalTo: pickerView.bottomAnchor, constant: 20),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            
        ])
    }
    
    @objc private func saveButtonTapped() {
        let newStudent = StudentModel(studentNumber: Int("placeholder") ?? 0, courseOfStudy: availableCoursesOfStudy[pickerView.selectedRow(inComponent: 0)])
        onAddStudent?(newStudent)
        navigationController?.popViewController(animated: true)
    }
    
    @objc private func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return availableCoursesOfStudy.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return availableCoursesOfStudy[row]
    }
}
