struct MovieWatchlist {
    var titles: [String] = []
    var ratings: [Int] = []
    var watched: [Bool] = []

    mutating func addMovie(_ title: String, rating: Int) {
        titles.append(title)
        ratings.append(rating)
        watched.append(false)
    }

    mutating func markWatched(_ index: Int) {
        watched[index] = true
    }

    func highlyRated() -> [String] {
        var result: [String] = []
        for i in 0..<ratings.count {
            if ratings[i] >= 9 {
                result.append(titles[i])
            }
        }
        return result
    }

    func showList() {
        print("🎬 Watchlist:")
        for i in 0..<titles.count {
            let num = i + 1
            let status = watched[i] ? "✅" : "⏳"
            print("\(num). \(titles[i]) — \(ratings[i])/10 \(status)")
        }
        print("Highly rated: \(highlyRated())")
    }
}

var watchlist = MovieWatchlist()
watchlist.addMovie("Dune", rating: 9)
watchlist.addMovie("Everything Everywhere", rating: 10)
watchlist.addMovie("Oppenheimer", rating: 8)
watchlist.markWatched(0)
watchlist.showList()
