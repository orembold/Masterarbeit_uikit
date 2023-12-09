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
     "firstname": "Robert",
     "lastname": "Johnson",
     "universityMail": "robert.johnson@stud.uni-regensburg.de",
     "age": 21,
     "semesterCount": 3,
     "studentNumber": 456789,
     "courseOfStudy": "Mechanical Engineering"
   },
   {
     "firstname": "Emily",
     "lastname": "Brown",
     "universityMail": "emily.brown@stud.uni-regensburg.de",
     "age": 23,
     "semesterCount": 5,
     "studentNumber": 234567,
     "courseOfStudy": "Physics"
   },
   {
     "firstname": "Michael",
     "lastname": "Miller",
     "universityMail": "michael.miller@stud.uni-regensburg.de",
     "age": 19,
     "semesterCount": 1,
     "studentNumber": 890123,
     "courseOfStudy": "Mathematics"
   },
   {
     "firstname": "Sophia",
     "lastname": "Davis",
     "universityMail": "sophia.davis@stud.uni-regensburg.de",
     "age": 20,
     "semesterCount": 2,
     "studentNumber": 345678,
     "courseOfStudy": "Chemistry"
   },
   {
     "firstname": "William",
     "lastname": "Garcia",
     "universityMail": "william.garcia@stud.uni-regensburg.de",
     "age": 21,
     "semesterCount": 3,
     "studentNumber": 567890,
     "courseOfStudy": "Biology"
   },
   {
     "firstname": "Olivia",
     "lastname": "Martinez",
     "universityMail": "olivia.martinez@stud.uni-regensburg.de",
     "age": 22,
     "semesterCount": 4,
     "studentNumber": 678901,
     "courseOfStudy": "Environmental Science"
   },
   {
     "firstname": "Liam",
     "lastname": "Johnson",
     "universityMail": "liam.johnson@stud.uni-regensburg.de",
     "age": 23,
     "semesterCount": 5,
     "studentNumber": 789012,
     "courseOfStudy": "Geology"
   },
   {
     "firstname": "Emma",
     "lastname": "Taylor",
     "universityMail": "emma.taylor@stud.uni-regensburg.de",
     "age": 20,
     "semesterCount": 2,
     "studentNumber": 345678,
     "courseOfStudy": "Astronomy"
   },
   {
     "firstname": "Noah",
     "lastname": "Clark",
     "universityMail": "noah.clark@stud.uni-regensburg.de",
     "age": 21,
     "semesterCount": 3,
     "studentNumber": 456789,
     "courseOfStudy": "Astrophysics"
   },
   {
     "firstname": "Ava",
     "lastname": "Lewis",
     "universityMail": "ava.lewis@stud.uni-regensburg.de",
     "age": 22,
     "semesterCount": 4,
     "studentNumber": 567890,
     "courseOfStudy": "Political Science"
   },
   {
     "firstname": "Jackson",
     "lastname": "Allen",
     "universityMail": "jackson.allen@stud.uni-regensburg.de",
     "age": 23,
     "semesterCount": 5,
     "studentNumber": 678901,
     "courseOfStudy": "History"
   },
   {
     "firstname": "Mia",
     "lastname": "Walker",
     "universityMail": "mia.walker@stud.uni-regensburg.de",
     "age": 20,
     "semesterCount": 2,
     "studentNumber": 789012,
     "courseOfStudy": "Psychology"
   },
   {
     "firstname": "Lucas",
     "lastname": "Hall",
     "universityMail": "lucas.hall@stud.uni-regensburg.de",
     "age": 21,
     "semesterCount": 3,
     "studentNumber": 890123,
     "courseOfStudy": "Sociology"
   },
   {
     "firstname": "Isabella",
     "lastname": "Young",
     "universityMail": "isabella.young@stud.uni-regensburg.de",
     "age": 22,
     "semesterCount": 4,
     "studentNumber": 345678,
     "courseOfStudy": "Economics"
   },
   {
     "firstname": "Liam",
     "lastname": "Stewart",
     "universityMail": "liam.stewart@stud.uni-regensburg.de",
     "age": 23,
     "semesterCount": 5,
     "studentNumber": 456789,
     "courseOfStudy": "Philosophy"
   },
   {
     "firstname": "Sophia",
     "lastname": "Baker",
     "universityMail": "sophia.baker@stud.uni-regensburg.de",
     "age": 20,
     "semesterCount": 2,
     "studentNumber": 567890,
     "courseOfStudy": "English Literature"
   },
   {
     "firstname": "Oliver",
     "lastname": "Perez",
     "universityMail": "oliver.perez@stud.uni-regensburg.de",
     "age": 21,
     "semesterCount": 3,
     "studentNumber": 678901,
     "courseOfStudy": "Creative Writing"
   },
   {
     "firstname": "Emma",
     "lastname": "Bailey",
     "universityMail": "emma.bailey@stud.uni-regensburg.de",
     "age": 22,
     "semesterCount": 4,
     "studentNumber": 789012,
     "courseOfStudy": "Film Studies"
   },
   {
     "firstname": "Logan",
     "lastname": "Ward",
     "universityMail": "logan.ward@stud.uni-regensburg.de",
     "age": 23,
     "semesterCount": 5,
     "studentNumber": 890123,
     "courseOfStudy": "Music"
   },
   {
     "firstname": "Ava",
     "lastname": "Howard",
     "universityMail": "ava.howard@stud.uni-regensburg.de",
     "age": 20,
     "semesterCount": 2,
     "studentNumber": 345678,
     "courseOfStudy": "Dance"
   },
   {
     "firstname": "Elijah",
     "lastname": "Fisher",
     "universityMail": "elijah.fisher@stud.uni-regensburg.de",
     "age": 21,
     "semesterCount": 3,
     "studentNumber": 456789,
     "courseOfStudy": "Theater Arts"
   },
   {
     "firstname": "Mia",
     "lastname": "Mitchell",
     "universityMail": "mia.mitchell@stud.uni-regensburg.de",
     "age": 22,
     "semesterCount": 4,
     "studentNumber": 567890,
     "courseOfStudy": "Fashion Design"
   },
   {
     "firstname": "Carter",
     "lastname": "Bell",
     "universityMail": "carter.bell@stud.uni-regensburg.de",
     "age": 23,
     "semesterCount": 5,
     "studentNumber": 678901,
     "courseOfStudy": "Graphic Design"
   },
   {
     "firstname": "Isabella",
     "lastname": "Hill",
     "universityMail": "isabella.hill@stud.uni-regensburg.de",
     "age": 20,
     "semesterCount": 2,
     "studentNumber": 789012,
     "courseOfStudy": "Industrial Design"
   },
   {
     "firstname": "James",
     "lastname": "Powell",
     "universityMail": "james.powell@stud.uni-regensburg.de",
     "age": 21,
     "semesterCount": 3,
     "studentNumber": 890123,
     "courseOfStudy": "Architecture"
   },
   {
     "firstname": "Aria",
     "lastname": "Barnes",
     "universityMail": "aria.barnes@stud.uni-regensburg.de",
     "age": 22,
     "semesterCount": 4,
     "studentNumber": 345678,
     "courseOfStudy": "Interior Design"
   },
   {
     "firstname": "Ethan",
     "lastname": "Woods",
     "universityMail": "ethan.woods@stud.uni-regensburg.de",
     "age": 23,
     "semesterCount": 5,
     "studentNumber": 456789,
     "courseOfStudy": "Landscape Architecture"
   },
   {
     "firstname": "Madison",
     "lastname": "Harrison",
     "universityMail": "madison.harrison@stud.uni-regensburg.de",
     "age": 20,
     "semesterCount": 2,
     "studentNumber": 567890,
     "courseOfStudy": "Civil Engineering"
   },
   {
     "firstname": "Jackson",
     "lastname": "Foster",
     "universityMail": "jackson.foster@stud.uni-regensburg.de",
     "age": 21,
     "semesterCount": 3,
     "studentNumber": 678901,
     "courseOfStudy": "Mechatronics"
   },
   {
     "firstname": "Scarlett",
     "lastname": "Harvey",
     "universityMail": "scarlett.harvey@stud.uni-regensburg.de",
     "age": 22,
     "semesterCount": 4,
     "studentNumber": 789012,
     "courseOfStudy": "Chemical Engineering"
   },
   {
     "firstname": "Henry",
     "lastname": "Perkins",
     "universityMail": "henry.perkins@stud.uni-regensburg.de",
     "age": 23,
     "semesterCount": 5,
     "studentNumber": 890123,
     "courseOfStudy": "Biomedical Engineering"
   },
   {
     "firstname": "Lily",
     "lastname": "Fisher",
     "universityMail": "lily.fisher@stud.uni-regensburg.de",
     "age": 20,
     "semesterCount": 2,
     "studentNumber": 345678,
     "courseOfStudy": "Materials Science"
   }
 ]
 """
}
