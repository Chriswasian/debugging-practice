students = [
    {"name": "Alice", "grade": 88},
    {"name": "Bob", "grade": 72},
    {"name": "Charlie", "grade": 95},
]

def get_average(students):
    total = 0
    for student in students:
        total += student["grade"]
    return total / len(students)

def get_top_student(students):
    top = students[0]
    for student in students:
        if student["grade"] > top["grade"]:
            top = student
    return top

def print_results(students):
    avg = get_average(students)
    top = get_top_student(students)
    print("Class average: " + str(avg))
    print("Top student: " + str(top["name"]))

print_results(students)