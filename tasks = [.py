tasks = [
    {"title": "Fix login bug", "priority": 1, "done": False},
    {"title": "Write tests", "priority": 3, "done": False},
    {"title": "Deploy to prod", "priority": 1, "done": True},
    {"title": "Update docs", "priority": 2, "done": False},
]

def get_incomplete(tasks):
    incomplete = []
    for task in tasks:
        if not task["done"]:
            incomplete.append(task["title"])
    return incomplete
def get_high_priority(tasks):
    urgent = []
    for task in tasks:
        if task["priority"] == 1:
            urgent.append(task["title"])
    return urgent

def get_done_count(tasks):
    count = 0
    for task in tasks:
        if task["done"]:
            count += 1
    return count
def print_summary(tasks):
    incomplete = get_incomplete(tasks)
    urgent = get_high_priority(tasks)
    done = get_done_count(tasks)
    print("Incomplete tasks: " + ", ".join(incomplete))
    print("High priority: " + ", ".join(urgent))
    print("Completed: " + str(done))

print_summary(tasks)