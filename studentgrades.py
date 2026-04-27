students = [
    {"name": "Alice", "grades": [88, 92, 79]},
    {"name": "Bob", "grades": [70, 65, 90]},
    {"name": "Charlie", "grades": [95, 100, 98]},
]

def get_average(grades):
    total = 0
    for grade in grades:
        total += grade
    return total / len(grades)

def get_letter_grade(avg):
        if avg >= 90:
            return "A"
        elif avg >= 80:
            return "B"
        elif avg >= 70:
            return "C"
        elif avg >= 60:
            return "D"
        else:
            return "F"

def print_report(students):
    for student in students:
        avg = get_average(student["grades"])
        letter = get_letter_grade(avg)
        print(student["name"] + " - Average: " + str(round(avg, 2)) + " (" + letter + ")")

print_report(students)