students = [
    {"name": "Alex", "grade": 91, "passed": True},
    {"name": "Jordan", "grade": 58, "passed": False},
    {"name": "Taylor", "grade": 74, "passed": True},
    {"name": "Casey", "grade": 45, "passed": False},
]

def get_passing_students(students):
    passing = []
    for student in students:
        if student["passed"]:
            passing.append(student)
    return passing
def get_class_average(students):
    grades = []
    for student in students:
        grades.append(student["grade"])
    return sum(grades) / len(grades)

def get_failing_count(students):
    count = 0
    for student in students:
        if student["passed"] == False:
            count += 1
    return count

def print_report(students):
    passing = get_passing_students(students)
    avg = get_class_average(students)
    failing = get_failing_count(students)
    print("Passing students: " + str(len(passing)))
    print("Class average: " + str(avg))
    print("Failing count: " + str(failing))

print_report(students)