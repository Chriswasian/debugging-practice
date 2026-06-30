struct GradeBook {
    var studentNames: [String] = []
    var grades: [Int] = []

    mutating func addStudent(_ name: String, grade: Int) {
        studentNames.append(name)
        grades.append(grade)
    }

    func highestGrade() -> Int {
        var best = 0
        for grade in grades {
            if grade > best {
                best = grade
            }
        }
        return best
    }

    func classAverage() -> Double {
        let total = grades.reduce(0, +)
        return Double(total) / Double(grades.count)
    }

    func showReport() {
        print("📚 Grade Report:")
        for i in 0..<studentNames.count {
            print("\(i + 1). \(studentNames[i]) — \(grades[i])%")
        }
        print("Highest: \(highestGrade())%")
        print("Class average: \(classAverage())%")
    }
}

var book = GradeBook()
book.addStudent("Wilson", grade: 92)
book.addStudent("Jason", grade: 87)
book.addStudent("Lucky", grade: 95)
book.showReport()
