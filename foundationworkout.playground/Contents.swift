import Foundation

struct Workout {
    var name: String
    var calories: Int
    var duration: Int
}
var workouts = [
    Workout(name: "Run", calories: 350, duration: 30),
    Workout(name: "Cycling", calories: 500, duration: 45),
    Workout(name: "Yoga", calories: 150, duration: 60),
    Workout(name: "HIIT", calories: 400, duration: 25),
    Workout(name: "Walk", calories: 200, duration: 40)
]

// Returns workouts that burned 350 or more calories
@MainActor func intensiveWorkouts() -> [String] {
    return workouts.filter { $0.calories >= 350 }.map { $0.name }
}

// Prints numbered workout list (1 through 5)
@MainActor func printWorkoutList() {
    for i in 0..<workouts.count {
        print("\(i + 1). \(workouts[i].name) - \(workouts[i].calories) cal")
    }
}

// ✏️ WRITE THIS: returns total calories burned across all workouts
@MainActor
func totalCalories() -> Int {
    var total = 0
    for i in 0..<workouts.count {
        total += workouts[i].calories
    }
    return total
}

print("Intensive workouts:", intensiveWorkouts())
printWorkoutList()
print("Total calories:", totalCalories())
