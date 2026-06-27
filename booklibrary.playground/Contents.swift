struct BookLibrary {
    var books: [String] = []
    var pages: [Int] = []

    mutating func addBook(_ title: String, pageCount: Int) {
        books.append(title)
        pages.append(pageCount)
    }

    func longestBook() -> String {
        var highest = 0
        var topBook = ""
        for i in 0..<books.count {
            if pages[i] > highest {
                highest = pages[i]
                topBook = books[i]
            }
        }
        return topBook
    }

    func averagePages() -> Int {
        let total = pages.reduce(0, +)
        return total / (pages.count )
    }

    func showLibrary() {
        print("📚 Library (\(books.count) books):")
        for i in 0..<books.count {
            print("\(i + 1). \(books[i]) — \(pages[i]) pages")
        }
        print("Longest: \(longestBook())")
        print("Avg pages: \(averagePages())")
    }
}

var library = BookLibrary()
library.addBook("Dune", pageCount: 412)
library.addBook("Project Hail Mary", pageCount: 476)
library.addBook("The Martian", pageCount: 369)
library.showLibrary()
