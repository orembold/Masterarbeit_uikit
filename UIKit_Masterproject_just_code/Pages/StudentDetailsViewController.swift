//
//  StudentDetailsViewController.swift
//  UIKit_Masterproject_just_code
//
//  Created by Oscar Rembold on 08.12.23.
//

import UIKit

class StudentDetailsViewController: UIViewController {

    var student: StudentModel

    private lazy var profileImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "person.circle.fill"))
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .black
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 28, weight: .regular)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var ageLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var universityMailLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = -1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var semesterCountLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var courseOfStudyLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var studentNumberLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    init(student: StudentModel) {
        self.student = student
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        view.addSubview(profileImageView)
        view.addSubview(nameLabel)
        view.addSubview(ageLabel)
        view.addSubview(universityMailLabel)
        view.addSubview(semesterCountLabel)
        view.addSubview(courseOfStudyLabel)
        view.addSubview(studentNumberLabel)
        
        title = student.fullName

        setupConstraints()

        updateUI()
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileImageView.widthAnchor.constraint(equalToConstant: 120),
            profileImageView.heightAnchor.constraint(equalToConstant: 120),

            nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 15),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),

            ageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 12),
            ageLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            ageLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),

            universityMailLabel.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 8),
            universityMailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            universityMailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),

            semesterCountLabel.topAnchor.constraint(equalTo: universityMailLabel.bottomAnchor, constant: 8),
            semesterCountLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            semesterCountLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),

            courseOfStudyLabel.topAnchor.constraint(equalTo: semesterCountLabel.bottomAnchor, constant: 8),
            courseOfStudyLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            courseOfStudyLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),

            studentNumberLabel.topAnchor.constraint(equalTo: courseOfStudyLabel.bottomAnchor, constant: 8),
            studentNumberLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            studentNumberLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
        ])
    }

    private func updateUI() {
        nameLabel.text = "\(student.firstname) \(student.lastname)"
        ageLabel.text = "Age: \(student.age)"
        universityMailLabel.text = "University mail: \(student.universityMail)"
        semesterCountLabel.text = "Semester count: \(student.semesterCount)"
        courseOfStudyLabel.text = "Course of Study: \(student.courseOfStudy)"
        studentNumberLabel.text = "Student number: \(student.studentNumber)"
    }
}
