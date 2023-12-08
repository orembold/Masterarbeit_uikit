//
//  ExampleData.swift
//  SwiftUI_Masterproject
//
//  Created by Oscar Rembold on 07.12.23.
//

import Foundation

class ExampleData {
    
    static func getStudentsData() -> [StudentModel] {
        var studentList: [StudentModel] = []
        if let data = ExampleData.exampleStudentsJson.data(using: .utf8) {
            do {
                studentList = try JSONDecoder().decode([StudentModel].self, from: data)
            } catch {
                print(error)
            }
        }
        return studentList
    }
    
   static let exampleStudentsJson =
 """
 [
     {
         "firstname": "John",
         "lastname": "Doe",
         "universityMail": "john.doe@stud.uni-regensburg.de",
         "age": 20,
         "semesterCount": 2,
         "studentNumber": 123456,
         "courseOfStudy": "Computer Science"
     },
     {
         "firstname": "Jane",
         "lastname": "Smith",
         "universityMail": "jane.smith@stud.uni-regensburg.de",
         "age": 22,
         "semesterCount": 4,
         "studentNumber": 789012,
         "courseOfStudy": "Electrical Engineering"
     },
     {
         "firstname": "Alice",
         "lastname": "Johnson",
         "universityMail": "alice.johnson@stud.uni-regensburg.de",
         "age": 21,
         "semesterCount": 3,
         "studentNumber": 345678,
         "courseOfStudy": "Physics"
     },
     {
         "firstname": "Bob",
         "lastname": "Williams",
         "universityMail": "bob.williams@stud.uni-regensburg.de",
         "age": 23,
         "semesterCount": 5,
         "studentNumber": 901234,
         "courseOfStudy": "Mathematics"
     },
     {
         "firstname": "Eva",
         "lastname": "Miller",
         "universityMail": "eva.miller@stud.uni-regensburg.de",
         "age": 20,
         "semesterCount": 2,
         "studentNumber": 567890,
         "courseOfStudy": "Chemistry"
     },
     {
         "firstname": "Michael",
         "lastname": "Jones",
         "universityMail": "michael.jones@stud.uni-regensburg.de",
         "age": 24,
         "semesterCount": 6,
         "studentNumber": 123789,
         "courseOfStudy": "Biology"
     },
     {
         "firstname": "Sophia",
         "lastname": "Brown",
         "universityMail": "sophia.brown@stud.uni-regensburg.de",
         "age": 22,
         "semesterCount": 4,
         "studentNumber": 890123,
         "courseOfStudy": "History"
     },
     {
         "firstname": "David",
         "lastname": "Taylor",
         "universityMail": "david.taylor@stud.uni-regensburg.de",
         "age": 21,
         "semesterCount": 3,
         "studentNumber": 456789,
         "courseOfStudy": "Economics"
     }
 ]
 """
}
