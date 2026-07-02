struct RunTracker {
    var distances: [Double] = []
    var times: [Int] = []

    mutating func logRun(distance: Double, minutes: Int) {
        distances.append(distance)
        times.append(minutes)
    }

    func fastestRun() -> Int {
        var lowest = times[0]
        for time in times {
            if time < lowest {
                lowest = time
            }
        }
        return lowest
    }

    func averageDistance() -> Double {
        let total = distances.reduce(0, +)
        return total / Double(distances.count)
    }

    func showRuns() {
        print("🏃 Run Log:")
        for i in 0..<distances.count {
            print("\(i + 1). \(distances[i]) mi — \(times[i]) min")
        }
        print("Fastest: \(fastestRun()) min")
        print("Avg distance: \(averageDistance()) mi")
    }
}

var tracker = RunTracker()
tracker.logRun(distance: 4.0, minutes: 44)
tracker.logRun(distance: 3.5, minutes: 38)
tracker.logRun(distance: 5.0, minutes: 55)
tracker.showRuns()
