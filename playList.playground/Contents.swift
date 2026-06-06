struct PlaylistTracker {
    var songs: [String] = []

    mutating func addSong(_ title: String) {
        songs.append(title)
    }

    func showPlaylist() {
        print("Your playlist:")
        for i in 0..<songs.count {
            print("\(i + 1). \(songs[i])")
        }
        print("\nMost recent: \(songs[songs.count - 1])")
    }
}

var tracker = PlaylistTracker()
tracker.addSong("Blinding Lights")
tracker.addSong("Levitating")
tracker.addSong("Stay")
tracker.showPlaylist()
