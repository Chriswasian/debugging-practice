var songTitles = ["Blinding Lights", "As It Was", "Levitating", "Stay", "Heat Waves"]
var playCount = [145, 89, 203, 67, 178]

var totalPlays = 0
var mostPlayed = 0
var mostPlayedSong = songTitles[0]
var leastPlayed = playCount[0]
var leastPlayedSong = songTitles[0]

for i in 0..<playCount.count {
    totalPlays += playCount[i]
    if playCount[i] > mostPlayed {
        mostPlayed = playCount[i]
        mostPlayedSong = songTitles[i]
    }
    if playCount[i] < leastPlayed {
        leastPlayed = playCount[i]
        leastPlayedSong = songTitles[i]
    }
}

let averagePlays = totalPlays / playCount.count

print("Total plays: \(totalPlays)")
print("Average: \(averagePlays)")
print("Most played: \(mostPlayedSong) - \(mostPlayed) plays")
print("Least played: \(leastPlayedSong) -   \(leastPlayed) plays")
