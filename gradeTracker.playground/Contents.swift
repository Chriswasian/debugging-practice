struct GradeTracker {
    var students: [String] = []
    var scores: [Double] = []
    
    mutating func addStudent(_ name: String, score: Double) {
        students.append(name)
        scores.append(score)
    }
    
    func averageScore() -> Double {
        let total = scores.reduce(0, +)
        let avg = total / Double(scores.count)
        return avg
    }
    
    func passingStudents() -> [String] {
        var passing: [String] = []
        for i in 0..<students.count {
            if scores[i] >= 70 {
                passing.append(students[i])
            }
        }
        return passing
    }

    func showResults() {
        print("Class Results:")
        for i in 0..<students.count {
            print("\(students[i]): \(scores[i])")
        }
        print("Average: \(averageScore())")
        let passing = passingStudents()
        print("Passing (\(passing.count)/\(students.count)):")
        for student in passing {
            print("  ✅ \(student)")
        }
    }
}

var tracker = GradeTracker()
tracker.addStudent("Wilson", score: 88.0)
tracker.addStudent("Lucky", score: 70.0)
tracker.addStudent("Jason", score: 55.0)
tracker.showResults()
