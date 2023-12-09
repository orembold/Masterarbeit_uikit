//
//  StudentModel.swift
//  SwiftUI_Masterproject
//
//  Created by Oscar Rembold on 07.12.23.
//

import Foundation

struct StudentModel: Decodable, Identifiable, Hashable {
    var id = UUID()
    let firstname: String
    let lastname: String
    let universityMail: String
    let age: Int
    let semesterCount: Int
    let studentNumber: Int
    let courseOfStudy: String
    
    var fullName: String {
        return "\(firstname) \(lastname)"
    }
    
    init(studentNumber: Int, courseOfStudy: String) {
        let students = ExampleData.getStudentsData()
        let foundStudent = students[Int.random(in: 0..<students.count)]
        self.id = UUID()
        self.firstname = foundStudent.firstname
        self.lastname = foundStudent.lastname + " (new student)"
        self.universityMail = foundStudent.universityMail
        self.age = foundStudent.age
        self.semesterCount = foundStudent.semesterCount
        self.studentNumber = studentNumber
        self.courseOfStudy = courseOfStudy
    }
    
    
    private enum CodingKeys: String, CodingKey {
        case firstname
        case lastname
        case universityMail
        case age
        case semesterCount
        case studentNumber
        case courseOfStudy
    }
}


