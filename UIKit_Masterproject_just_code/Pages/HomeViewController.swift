//
//  ViewController.swift
//  UIKit_Masterproject_just_code
//
//  Created by Oscar Rembold on 22.08.23.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    var studentsList: [StudentModel] = ExampleData.getStudentsData()
    
    private lazy var urLogo: UIImageView = {
            let imageView = UIImageView(image: UIImage(named: "ur_logo")) // Replace "ur_logo" with the actual image name
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.contentMode = .scaleAspectFit
            return imageView
        }()

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Students"
        label.font = UIFont.systemFont(ofSize: 28, weight: .regular)
        return label
    }()

    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(StudentCell.self, forCellReuseIdentifier: "studentCell")
        return tableView
    }()
    
    private lazy var floatingActionButton: FloatingActionButton = {
        let button = FloatingActionButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        floatingActionButton.onTap = {
            self.presentAddNewStudentViewController()
        }

        setupViews()
    }

    private func setupViews() {
        
        view.addSubview(urLogo)
        view.addSubview(titleLabel)
        view.addSubview(tableView)
        view.addSubview(floatingActionButton)
        
        NSLayoutConstraint.activate([
            urLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            urLogo.topAnchor.constraint(equalTo: view.topAnchor, constant: 110),
            urLogo.widthAnchor.constraint(equalToConstant: 145),
            urLogo.heightAnchor.constraint(equalToConstant: 105),
            
            titleLabel.topAnchor.constraint(equalTo: urLogo.bottomAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            tableView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            floatingActionButton.widthAnchor.constraint(equalToConstant: 60),
            floatingActionButton.heightAnchor.constraint(equalToConstant: 60),
            floatingActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            floatingActionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25)
        ])
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentsList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell", for: indexPath) as! StudentCell
        let student = studentsList[indexPath.row]
        cell.configure(with: student)
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let student = studentsList[indexPath.row]
        let studentDetailsVC = StudentDetailsViewController(student: student)
        navigationController?.pushViewController(studentDetailsVC, animated: true)
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            studentsList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    private func presentAddNewStudentViewController() {
        let addNewStudentVC = AddNewStudentViewController()
           
           addNewStudentVC.onAddStudent = { [weak self] newStudent in
               self?.studentsList.insert(newStudent, at: 0)
               
               self?.tableView.reloadData()
           }
        addNewStudentVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        navigationController?.pushViewController(addNewStudentVC, animated: true)
    }
}
