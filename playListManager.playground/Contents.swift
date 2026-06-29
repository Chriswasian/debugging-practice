struct PlaylistManager {
    var songs: [String] = []
    var durations: [Int] = []

    mutating func addSong(_ title: String, seconds: Int) {
        songs.append(title)
        durations.append(seconds)
    }

    func longestSong() -> String? {
        guard durations.count > 0 else { return nil }
        var highest = 0
        var longest = ""
        for i in 0..<durations.count {
            if durations[i] > highest {
                highest = durations[i]
                longest = songs[i]
            }
        }
        return longest
    }

    func totalRuntime() -> Int {
        return durations.reduce(0, +)
    }

    func showPlaylist() {
        print("🎵 Playlist:")
        for i in 0..<songs.count {
            print("\(i + 1). \(songs[i]) — \(durations[i])s")
        }
        if let song = longestSong() {
            print("Longest: \(song)")
        }
        print("Total runtime: \(totalRuntime() / 60)min \(totalRuntime() % 60)s")
    }
}

var playlist = PlaylistManager()
playlist.addSong("Espresso", seconds: 175)
playlist.addSong("Levitating", seconds: 203)
playlist.addSong("Blinding Lights", seconds: 200)
playlist.showPlaylist()
