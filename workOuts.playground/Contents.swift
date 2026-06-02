var workouts = [String]()
var durations = [45, 30, 60, 20, 50]
var calories = [320, 210, 450, 140, 380]

var totalCalories = 0
var totalTime = 0
var longestWorkout = 0

for i in 0..<durations.count {
totalCalories += calories[i]
totalTime += durations[i]
    if durations[i] > longestWorkout {
        longestWorkout = durations[i]
    }
    workouts.append("Workout \(i + 1)")
    }

    let avgCalories = totalCalories / durations.count
    let avgTime = totalTime / durations.count

    print("Total workouts: \(workouts.count)")
    print("Total time: \(totalTime) mins")
    print("Total calories: \(totalCalories)")
    print("Avg calories/workout: \(avgCalories)")
    print("Longest session: \(longestWorkout) mins")
    print("First workout: \(workouts[0])")
