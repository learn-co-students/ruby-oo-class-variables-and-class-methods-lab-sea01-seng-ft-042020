require "pry"

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end
    
    def self.genre_count
        @@genres.select do |genre|
        if @@genre_count[genre] != nil
            @@genre_count[genre] += 1
        else
            @@genre_count[genre] = 1
        end
    end
    return @@genre_count
    end

    def self.artist_count
        @@artists.select do |artist|
        if @@artist_count[artist] != nil
            @@artist_count[artist] += 1
        else
            @@artist_count[artist] = 1
        end
    end
    return @@artist_count
    end
end