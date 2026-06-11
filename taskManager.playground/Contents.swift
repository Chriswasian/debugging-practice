struct TaskManager {
    var tasks: [String] = []
    var priorities: [Int] = []

    mutating func addTask(_ name: String, priority: Int) {
        tasks.append(name)
        priorities.append(priority)
    }

    func highPriorityTasks() -> [String] {
        var result: [String] = []
        for i in 0..<tasks.count {
            if priorities[i] >= 3 {
                result.append(tasks[i])
            }
        }
        return result
    }

    func showTasks() {
        let highPriority = highPriorityTasks()
        print("All tasks (\(tasks.count) total):")
        for i in 0..<tasks.count {
            print("\(i + 1). \(tasks[i]) [P\(priorities[i])]")
        }
        print("High priority: \(highPriority.count) tasks")
        for task in highPriority {
            print("  → \(task)")
        }
        print("Completion: \(highPriority.count)/ \(tasks.count)")
    }
}

var manager = TaskManager()
manager.addTask("Fix login bug", priority: 3)
manager.addTask("Update README", priority: 1)
manager.addTask("Code review", priority: 3)
manager.addTask("Write tests", priority: 2)
manager.showTasks()
