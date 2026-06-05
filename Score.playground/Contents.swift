// Top scores tracker

let scores = [95, 88, 72, 61, 55]

print("Top 3 Scores:")
for i in 0..<scores.count {
    print("\(i + 1). \(scores[i])")
}

let topScore = scores[0]
print("\nHighest score: \(topScore)")

let average = (95 + 88 + 72 + 61 + 55) / 5
print("Average score: \(average)")
