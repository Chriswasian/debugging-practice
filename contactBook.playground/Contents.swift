struct ContactBook {
    var names: [String] = []
    var phones: [String] = []

    mutating func addContact(_ name: String, phone: String) {
        names.append(name)
        phones.append(phone)
    }

    func findPhone(for name: String) -> String? {
        for i in 0..<names.count {
            if names[i] == name {
                return phones[i]
            }
        }
        return nil
    }

    func totalContacts() -> Int {
        return names.count
    }

    func showContacts() {
        print("📱 Contacts (\(names.count) total):")
        for i in 0..<names.count {
            print("\(i + 1). \(names[i]) — \(phones[i])")
        }
        if let phone = findPhone(for: "Jason") {
            print("Jason's number: \(phone)")
        }
    }
}

var book = ContactBook()
book.addContact("Jason", phone: "555-0101")
book.addContact("Jersy", phone: "555-0102")
book.addContact("Lucky", phone: "555-0103")
book.showContacts()
