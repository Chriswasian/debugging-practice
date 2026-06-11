struct FitnessTracker {
    var workouts: [String] = []
    var durations: [Int] = []

    mutating func logWorkout(_ name: String, minutes: Int) {
        workouts.append(name)
        durations.append(minutes)
    }

    func totalTime() -> Int {
        return durations.reduce(0, +)
    }
    func averageTime() -> Double {
        return Double(totalTime()) / Double(durations.count)
    }

    func showSummary() {
        print("Workouts this week:")
        for i in 0..<workouts.count {
            print("\(i + 1). \(workouts[i]) — \(durations[i]) min")
        }
        print("Total: \(totalTime()) min")
        print("Average: \(averageTime()) min")
    }
}

var tracker = FitnessTracker()
tracker.logWorkout("Run", minutes: 30)
tracker.logWorkout("Yoga", minutes: 45)
tracker.logWorkout("Weights", minutes: 60)
tracker.showSummary()
