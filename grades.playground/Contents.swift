var students = ["Alice", "Bob", "Charlie", "Diana"]
var grades = [85, 92, 78, 95]

var passing = 0
var failing = 0
var highest = grades[0]
var highestStudent = students[0]

for i in 0..<grades.count {
if grades[i] >= 70 {
passing += 1
} else {
failing += 1
}
    if grades[i] > highest {
        highest = grades[i]
        highestStudent = students[i]
        }
        }

        let classAverage = grades.reduce(0, +) / grades.count

        print("Students: \(students.count)")
        print("Passing: \(passing)")
        print("Failing: \(failing)")
        print("Class average: \(classAverage)")
        print("Top student: \(highestStudent) - \(highest)pts")
        print("Last student: \(students[students.count - 1])")
