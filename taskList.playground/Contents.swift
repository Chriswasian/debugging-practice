struct TaskList {
    var tasks: [String] = []
    var priorities: [Int] = []
    
    mutating func addTask(_ name: String, priority: Int) {
        tasks.append(name)
        priorities.append(priority)
    }
    
    func urgentTasks() -> [String] {
        var result: [String] = []
        for i in 0..<tasks.count {
            if priorities[i] > 8 {
                result.append(tasks[i])
            }
        }
        return result
    }
    
    func topTask() -> String? {
        guard tasks.count > 0 else { return nil }
        var highest = 0
        var top = ""
        for i in 0..<tasks.count {
            if priorities[i] > highest {
                highest = priorities[i]
                top = tasks[i]
            }
        }
        return top
    }
    
    func showTasks() {
        print("📋 Tasks:")
        for i in 0..<tasks.count {
            let num = i + 1
            print("\(num). \(tasks[i]) — priority \(priorities[i])")
        }
        if let t = topTask() {
            print("Top priority: \(t)")
        }
        print("Urgent: \(urgentTasks())")
    }
}

var list = TaskList()
list.addTask("Fix login bug", priority: 9)
list.addTask("Update README", priority: 3)
list.addTask("Deploy to prod", priority: 10)
list.showTasks()
