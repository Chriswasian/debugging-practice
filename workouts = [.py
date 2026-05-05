workouts = [
    {"type": "Running", "duration": 30, "calories": 300},
    {"type": "Cycling", "duration": 45, "calories": 400},
    {"type": "Swimming", "duration": 60, "calories": 500},
]

def get_total_calories(workouts):
    total = 0
    for workout in workouts:
        total += workout["calories"]
    return total

def get_longest_workout(workouts):
    longest = workouts[0]
    for workout in workouts:
        if workout["duration"] > longest["duration"]:
            longest = workout
    return longest

def print_summary(workouts):
    total_calories = get_total_calories(workouts)
    longest = get_longest_workout(workouts)
    print("Total calories burned: " + str(total_calories))
    print("Longest workout: " + str(longest["type"]) + " (" + str(longest["duration"]) + " mins)")

print_summary(workouts)