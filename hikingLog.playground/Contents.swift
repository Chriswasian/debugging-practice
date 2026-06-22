struct HikingLog {
    var trails: [String] = []
    var distances: [Double] = []

    mutating func addTrail(_ name: String, miles: Double) {
        trails.append(name)
        distances.append(miles)
    }

    func longestTrail() -> String {
        var maxDist = 0.0
        var longest = ""
        for i in 0..<trails.count {
            if distances[i] > maxDist {
                maxDist = distances[i]
                longest = trails[i]
            }
        }
        return longest
    }

    func averageDistance() -> Double {
        let total = distances.reduce(0, +)
        return total / Double(distances.count)
    }

    func showLog() {
        print("Hiking Log:")
        for i in 0..<trails.count {
            let num = i + 1
            print("\(num). \(trails[i]) - \(distances[i]) miles")
        }
        print("Longest: \(longestTrail())")
        print("Average: \(averageDistance()) miles")
    }
}

var log = HikingLog()
log.addTrail("Mission Trails", miles: 5.2)
log.addTrail("Cowles Mountain", miles: 3.8)
log.addTrail("Torrey Pines", miles: 6.1)
log.showLog()
