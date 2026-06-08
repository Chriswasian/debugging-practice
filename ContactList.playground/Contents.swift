struct ContactList {
    var contacts: [String] = []

    mutating func addContact(_ name: String) {
        contacts.append(name)
    }

    func showContacts() {
        print("All contacts:")
        for i in 0..<contacts.count {
            print("\(i + 1). \(contacts[i])")
        }
        print("Most recent: \(contacts[contacts.count - 1])")
    }
}

var list = ContactList()
list.addContact("Jason")
list.addContact("Jersy")
list.addContact("Lucky")
list.showContacts()

