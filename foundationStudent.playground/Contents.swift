import Foundation

struct Student {
    var name: String
    var grade: Int
}

var students = [
    Student(name: "Alex", grade: 88),
    Student(name: "Jordan", grade: 92),
    Student(name: "Sam", grade: 75),
    Student(name: "Taylor", grade: 95)
]
@MainActor
func addStudent(_ student: Student) {
    students.append(student)
}
@MainActor
func averageGrade() -> Double {
    let total = students.reduce(0) { $0 + $1.grade }
    return Double(total) / Double(students.count)
}
@MainActor
func passingStudents() -> [String] {
    return students.filter { $0.grade >= 70 }.map { $0.name }
}
// ✏️ WRITE THIS: returns the name of the student with the highest grade
@MainActor
func topStudent() -> String {
    var highestGrade = 0
    var topName = ""
    for i in 0..<students.count {
        if students[i].grade > highestGrade {
            highestGrade = students[i].grade
            topName = students[i].name
        }
    }
    return topName
}


addStudent(Student(name: "Riley", grade: 80))
print("Average grade:", averageGrade())
print("Passing students:", passingStudents())
print("Top student:", topStudent())
