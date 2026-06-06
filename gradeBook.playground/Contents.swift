struct GradeBook {
    var grades: [Int] = []

    mutating func addGrade(_ grade: Int) {
        grades.append(grade)
    }

    func average() -> Double {
        let total = grades.reduce(0, +)
        return Double(total) / Double(grades.count)
    }

    func passing() -> [Int] {
        return grades.filter { $0 >= 60 }
    }

    func showReport() {
        let avg = average()
        let passingGrades = passing()
        print("Average: \(avg)")
        print("Passing: \(passingGrades.count) out of \(grades.count)")

        for i in 0..<grades.count {
            let rank = i + 1
            print("Grade \(rank): \(grades[i])")
        }
    }
}
var book = GradeBook()
book.addGrade(72)
book.addGrade(60)
book.addGrade(88)
book.addGrade(45)
book.addGrade(91)
book.showReport()
