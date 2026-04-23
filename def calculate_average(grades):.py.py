def calculate_average(grades):
    if grades == []:
        return 0
    total = 0
    for grade in grades:
        total += grade
        average = total / len(grades)
    return average

def get_letter_grade(average):
    if average >= 90:
        return "A"
    elif average >= 80:return "B"
    elif average >= 70:
        return "C"
    elif average >= 60:
        return "D"
    else:
        return "F"

student_grades = []
avg = calculate_average([])
print("Average score: " + str(avg))
print("Letter grade: " + get_letter_grade(avg))