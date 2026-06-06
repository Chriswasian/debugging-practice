struct StepTracker {
    var steps = 0
    let goal = 10000

    mutating func addSteps(_ count: Int) {
        steps += count
    }

    func showProgress() {
        print("Steps today: \(steps)")

        if steps >= goal {
            print("Goal reached! 🎉")
        } else {
            print("Keep going, \(goal - steps) steps to go!")
        }
    }
}

var tracker = StepTracker()
tracker.addSteps(6000)
tracker.addSteps(4500)
tracker.showProgress()
