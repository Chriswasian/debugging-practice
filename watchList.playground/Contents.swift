struct WatchList {
    var movies: [String] = []
    var ratings: [Int] = []

    mutating func addMovie(_ title: String, rating: Int) {
        movies.append(title)
        ratings.append(rating)
    }

    func topRated() -> String {
        var best = 0
        var topMovie = ""
        for i in 0..<ratings.count {
            if ratings[i] > best {
                best = ratings[i]
                topMovie = movies[i]
            }
        }
        return topMovie
    }

    func showList() {
        print("Watch List (\(movies.count) movies):")
        for i in 0..<movies.count {
            print("\(i + 1). \(movies[i]) — \(ratings[i])/10")
        }
        print("Top rated: \(topRated())")
        print("Latest added: \(movies[movies.count - 1])")
    }
}

var list = WatchList()
list.addMovie("Dune", rating: 9)
list.addMovie("Midsommar", rating: 8)
list.addMovie("Nope", rating: 7)
list.showList()
