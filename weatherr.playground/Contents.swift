struct WeatherLog {
    var days: [String] = []
    var temps: [Double] = []

    mutating func logDay(_ day: String, temp: Double) {
        days.append(day)
        temps.append(temp)
    }

    func averageTemp() -> Double {
        return temps.reduce(0, +) / Double(temps.count)
    }
    func coldestDay() -> String? {
        guard temps.count > 0 else { return nil }
        var lowest = temps[0]
        var coldest = days[0]
        for i in 1..<temps.count {
            if temps[i] < lowest {
                lowest = temps[i]
                coldest = days[i]
            }
        }
        return coldest
    }

    func showLog() {
        print("🌤 Weather Log:")
        for i in 0..<days.count {
            print("\(i + 1). \(days[i]) — \(temps[i])°F")
        }
        print("Average: \(averageTemp())°F")
        if let cold = coldestDay() {
            print("Coldest: \(cold)")
        }
    }
}

var log = WeatherLog()
log.logDay("Monday", temp: 72.0)
log.logDay("Tuesday", temp: 68.5)
log.logDay("Wednesday", temp: 75.2)
log.showLog()

