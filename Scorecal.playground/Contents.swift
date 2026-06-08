struct ScoreCalculator {
    var scores: [Int] = []

    mutating func addScore(_ score: Int) {
        scores.append(score)
    }

    func average() -> Double {
        let total = scores.reduce(0, +)
        return Double(total) / Double(scores.count)
    }

    func highest() -> Int {
        var best = 0
        for score in scores {
            if score > best {
                best = score
            }
        }
        return best
    }

    func showReport() {
        print("Scores: \(scores)")
        print("Average: \(average())")
        print("Highest: \(highest())")
        for i in 0..<scores.count {
            print("Score \(i + 1): \(scores[i])")
        }
    }
}

var calc = ScoreCalculator()
calc.addScore(85)
calc.addScore(92)
calc.addScore(78)
calc.addScore(96)
calc.showReport()
