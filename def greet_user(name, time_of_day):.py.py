def greet_user(name, time_of_day):
    if time_of_day == "morning":
        greeting = "Good morning"
    elif time_of_day == "afternoon":
        greeting = "Good afternoon"
    elif time_of_day == "evening":
        greeting = "Good evening"
    else:
        greeting = "Hello"
    return f"{greeting}, {name}!"

def calculate_bmi(weight_kg, height_m):
    bmi = weight_kg / (height_m * height_m)
    return round(bmi, 1)
def bmi_category(bmi):
    if bmi < 18.5:
        return "Underweight"
    elif bmi < 25.0:
        return "Normal"
    elif bmi < 30.0:
        return "Overweight"
    else:
        return "Obese"

def print_health_report(name, weight_kg, height_m, time_of_day):
    greeting = greet_user(name, time_of_day)
    bmi = calculate_bmi(weight_kg, height_m)
    category = bmi_category(bmi)
    print(greeting)
    print(f"BMI: {bmi} — {category}")
    print(f"Height: {height_m}m | Weight: {weight_kg}kg")

print_health_report("Wilson", 75, 1.78, "night")