struct FitnessTracker {
    var workouts: [String] = []
    var calories: [Int] = []
    
    mutating func logWorkout(_ name: String, burned: Int) {
        workouts.append(name)
        calories.append(burned)
    }
    
    func totalCalories() -> Int {
        return calories.reduce(0, +)
    }
    func highEffortWorkouts() -> [String] {
        var result: [String] = []
        for i in 0..<workouts.count {
            if calories[i] > 400 {
                result.append(workouts[i])
            }
        }
        return result
    }

    func showSummary() {
        print("Workouts (\(workouts.count) total):")
        for i in 0..<workouts.count {
            print("\(i + 1). \(workouts[i]) — \(calories[i]) cal")
        }
        print("Total burned: \(totalCalories()) cal")
        print("High effort: \(highEffortWorkouts())")
    }
}

var tracker = FitnessTracker()
tracker.logWorkout("Running", burned: 520)
tracker.logWorkout("Yoga", burned: 180)
tracker.logWorkout("HIIT", burned: 450)
tracker.showSummary()
