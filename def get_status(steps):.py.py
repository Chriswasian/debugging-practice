def get_status(steps):
    if steps >= 10000:
        return "Goal reached!"
    elif steps >= 5000:
        return "Halfway there"
    else:
        return "Keep going"

def weekly_summary(days):
    total = 0
    best_day = days[0]
    for day in days:
        total += day["steps"]
        if day["steps"] > best_day["steps"]:
            best_day = day
            average = total / len(days)
    return total, average, best_day

log = [
    {"day": "Monday", "steps": 8200},
    {"day": "Tuesday", "steps": 11500},
    {"day": "Wednesday", "steps": 4300},
    {"day": "Thursday", "steps": 9800},
    {"day": "Friday", "steps": 12100},
]

total, avg, best = weekly_summary(log)

print("Weekly total: " + str(total) + " steps")
print("Daily average: " + str(round(avg, 1)))
print("Best day: " + best["day"] + " with " + str(best["steps"]) + " steps")
for day in log:
    status = get_status(day["steps"])
    print(day["day"] + ": " + str(day["steps"]) + " - " + status)