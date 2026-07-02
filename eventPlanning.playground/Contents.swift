struct EventPlanner {
    var eventNames: [String] = []
    var guestCounts: [Int] = []

    mutating func addEvent(_ name: String, guests: Int) {
        eventNames.append(name)
        guestCounts.append(guests)
    }

    func biggestEvent() -> String? {
        guard guestCounts.count > 0 else { return nil }
        var highest = 0
        var biggest = ""
        for i in 0..<eventNames.count {
            if guestCounts[i] > highest {
                highest = guestCounts[i]
                biggest = eventNames[i]
            }
        }
        return biggest
    }

    func showEvents() {
        print("📅 Events:")
        for i in 0..<eventNames.count {
            let num = i + 1
        
            print("\(num). \(eventNames[i]) — \(guestCounts[i]) guests")
        }
        if let event = biggestEvent() {
            print("Biggest: \(event)")
            print("Top event: \(event)")
        }
        
    
    }
}

var planner = EventPlanner()
planner.addEvent("WWDC Watch Party", guests: 45)
planner.addEvent("Swift Study Group", guests: 12)
planner.addEvent("Apple Launch Event", guests: 200)
planner.showEvents()
