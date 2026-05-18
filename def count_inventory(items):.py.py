def count_inventory(items):
    counts = {}
    for item in items:
        if item in counts:
            counts[item] += 1
        else:
            counts[item] = 1
    return counts

def find_most_common(counts):
    best_item = None
    best_count = 0
    for item, count in counts.items():
        if count > best_count:
            best_count = count
            best_item = item
    return best_item

inventory = ["apple", "banana", "apple", "cherry", "banana", "apple"]

counts = count_inventory(inventory)
most_common = find_most_common(counts)

total = sum(counts.values())
print("Total items counted: " + str(total))
print("Most common item:", most_common)