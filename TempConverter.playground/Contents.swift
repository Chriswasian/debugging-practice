struct TempConverter {
    var results: [String] = []

    mutating func convert(_ celsius: Double) {
        let fahrenheit = celsius * 9 / 5 + 32
        results.append("\(celsius)°C = \(fahrenheit)°F")
    }

    func showResults() {
        print("Conversions:")
        for i in 0..<results.count {
            print("\(i + 1). \(results[i])")
        }
        let total = results.reduce(0.0) { acc, _ in acc + 1 }
        print("Total converted: \(total)")

        if results.count >= 3 {
            print("Lots of conversions today! 🌡️")
        } else {
            print("Just getting started!")
        }
    }
}

var converter = TempConverter()
converter.convert(0)
converter.convert(100)
converter.convert(37)
converter.showResults()
