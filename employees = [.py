employees = [
    {"name": "Sara", "department": "Engineering", "salary": 95000},
    {"name": "Mike", "department": "Marketing", "salary": 72000},
    {"name": "Priya", "department": "Engineering", "salary": 105000},
    {"name": "Tom", "department": "Marketing", "salary": 68000},
]

def get_department_avg(employees, department):
    total = 0
    count = 0
    for employee in employees:
        if employee["department"] == department:
            total += employee["salary"]
            count += 1
    return total / count

def get_highest_paid(employees):
    highest = employees[0]
    for employee in employees:
        if employee["salary"] > highest["salary"]:
            highest = employee
    return highest

def print_report(employees):
    eng_avg = get_department_avg(employees, "Engineering")
    mkt_avg = get_department_avg(employees, "Marketing")
    top = get_highest_paid(employees)
    print("Engineering avg salary: $" + str(eng_avg))
    print("Marketing avg salary: $" + str(mkt_avg))
    print("Highest paid: " + top["name"] + " ($" + str(top["salary"]) + ")")

print_report(employees)