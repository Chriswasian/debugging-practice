struct WeatherLog {
    var days: [String] = []
    var temps: [Double] = []

    mutating func recordDay(_ day: String, temp: Double) {
        days.append(day)
        temps.append(temp)
    }

    func highestTemp() -> Double {
        var highest = temps[0]
        for i in 1..<temps.count {
            if temps[i] > highest {
                highest = temps[i]
            }
        }
        return highest
    }

    func showLog() {
        print("Weather Log:")
        for i in 0..<days.count {
            print("\(days[i]): \(temps[i])°F")
        }
        print("Hottest: \(highestTemp())°F")
        print("Most recent: \(days[days.count - 1])")
    }
}
var log = WeatherLog()
log.recordDay("Monday", temp: 72.5)
log.recordDay("Tuesday", temp: 68.0)
log.recordDay("Wednesday", temp: 75.3)
log.showLog()
