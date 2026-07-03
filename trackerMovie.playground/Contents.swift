struct MovieTracker {
    var titles: [String] = []
    var scores: [Double] = []

    mutating func addMovie(_ title: String, score: Double) {
        titles.append(title)
        scores.append(score)
    }

    func averageScore() -> Double {
        let total = scores.reduce(0, +)
        return total / Double(scores.count)
    }
    
    func worstMovie() -> String {
        var lowest = 11.0
        var worst = ""
        for i in 0..<titles.count {
            if scores[i] < lowest {
                lowest = scores[i]
                worst = titles[i]
            }
        }
        return worst
    }
    // ✍️ YOUR TURN: write a function called worstMovie()
    // it should return the title of the movie with the LOWEST score as a String

    func showMovies() {
        print("🎬 Movies (\(titles.count) total):")
        for i in 0..<titles.count {
            print("\(i + 1). \(titles[i]) — \(scores[i])/10")
        }
        print("Average: \(averageScore())")
        print("Worst: \(worstMovie())")
    }
}
var tracker = MovieTracker()
tracker.addMovie("Morbius", score: 3.2)
tracker.addMovie("Interstellar", score: 9.5)
tracker.addMovie("The Room", score: 1.8)
tracker.showMovies()
