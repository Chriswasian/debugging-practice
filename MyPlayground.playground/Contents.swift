struct TemperatureLog {
    var cities: [String] = []
    var temps: [Double] = []

    mutating func logCity(_ city: String, temp: Double) {
        cities.append(city)
        temps.append(temp)
    }

    func hottestCity() -> String {
        var highest = 0.0
        var hottest = ""
        for i in 0..<cities.count {
            if temps[i] > highest {
                highest = temps[i]
                hottest = cities[i]
            }
        }
        return hottest
    }

    func showLog() {
        print("🌡 Temperature Log (\(cities.count) cities):")
        for i in 0..<cities.count {
            let num = i + 1
            print("\(num). \(cities[i]) — \(temps[i])°F")
        }
        print("Hottest: \(hottestCity())")
    }
}

var log = TemperatureLog()
log.logCity("San Diego", temp: 78.5)
log.logCity("Phoenix", temp: 105.2)
log.logCity("Seattle", temp: 62.0)
log.showLog()
