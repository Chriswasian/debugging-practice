struct BookClub {
    var members: [String] = []
    var readingList: [String] = []

    mutating func addMember(_ name: String) {
        members.append(name)
    }

    mutating func addBook(_ title: String) {
        readingList.append(title)
    }

    func currentBook() -> String {
        return readingList[readingList.count - 1]
    }

    func showClub() {
        print("Book Club — \(members.count) members")
        print("Currently reading: \(currentBook())")
        print("Members:")
        for i in 0..<members.count  {
            let num = i + 1
            print("\(num). \(members[i])")
        }
    }
}

var club = BookClub()
club.addMember("Wilson")
club.addMember("Lucky")
club.addMember("Jason")
club.addBook("Atomic Habits")
club.addBook("The Pragmatic Programmer")
club.showClub()

