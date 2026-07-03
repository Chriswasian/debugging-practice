struct LibraryTracker {
    var titles: [String] = []
    var ratings: [Int] = []

    mutating func addBook(_ title: String, rating: Int) {
        titles.append(title)
        ratings.append(rating)
    }
    
    func totalBooks() -> Int {
        return titles.count
    }
    // ✍️ YOUR TURN: write a function called totalBooks()
    // it should return the number of books as an Int

    func highestRated() -> String {
        var best = 0
        var top = ""
        for i in 0..<titles.count {
            if ratings[i] > best {
                best = ratings[i]
                top = titles[i]
            }
        }
        return top
    }

    func showLibrary() {
        print("📚 Library:")
        for i in 0..<titles.count {
            let num = i + 1
            print("\(num). \(titles[i]) — \(ratings[i])/10")
        }
        print("Top rated: \(highestRated())")
        print("Total books: \(totalBooks())")
    }
}

var library = LibraryTracker()
library.addBook("Dune", rating: 9)
library.addBook("Project Hail Mary", rating: 10)
library.addBook("The Martian", rating: 8)
library.showLibrary()
