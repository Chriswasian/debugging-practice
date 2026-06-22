struct MusicPlayer {
    var playlist: [String] = []
    var recentlyPlayed: [String] = []
    var currentIndex: Int = 0

    mutating func addSong(_ song: String) {
        playlist.append(song)
        recentlyPlayed.append(song)
    }

    func currentSong() -> String? {
        if currentIndex < playlist.count {
            return playlist[currentIndex]
        }
        return nil
    }

    func showNowPlaying() {
        guard let song = currentSong() else {
            print("No song playing")
            return
        }
        print("Now playing: \(song)")
        print("Added to history: \(song)")
    }

    func showPlaylist() {
        print("Playlist (\(playlist.count) songs):")
        for i in 0..<playlist.count {
            print("\(i + 1). \(playlist[i])")
        }
    }
}

var player = MusicPlayer()
player.addSong("Espresso")
player.addSong("Levitating")
player.addSong("Blinding Lights")
player.showNowPlaying()
player.showPlaylist()
