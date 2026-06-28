struct PetRecord {
    var names: [String] = []
    var ages: [Int] = []

    mutating func addPet(_ name: String, age: Int) {
        names.append(name)
        ages.append(age)
    }

    func oldestPet() -> String? {
        guard ages.count > 0 else { return nil }
        var highest = 0
        var oldest = ""
        for i in 0..<ages.count {
            if ages[i] > highest {
                highest = ages[i]
                oldest = names[i]
            }
        }
        return oldest
    }

    func showRecords() {
        print("🐾 Pet Records:")
        for i in 0..<names.count {
            print("\(i + 1). \(names[i]) — \(ages[i]) yrs")
        }
        if let pet = oldestPet() {
            print("Oldest: \(pet)")
        }
    }
}

var records = PetRecord()
records.addPet("Chai", age: 4)
records.addPet("Princeton", age: 3)
records.addPet("Chester", age: 7)
records.showRecords()
