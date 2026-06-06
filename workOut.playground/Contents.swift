// Workout tracker

var workouts: [String] = []
var totalCalories = 0

@MainActor func logWorkout(_ name: String, _ calories: Int) {
    workouts.append(name)
    totalCalories += calories
}

@MainActor func printSummary() {
    print("Workouts: \(workouts.count)")
    print("Calories burned:  \(totalCalories)")
    
    if totalCalories >  300 {
        print("Awesome session! 🔥")
    } else {
        print("Keep it up, you can do more!")
    }
}

logWorkout("Push-ups", 120)
logWorkout("Squats", 200)
printSummary()
