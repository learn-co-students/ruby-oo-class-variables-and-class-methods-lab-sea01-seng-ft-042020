require "pry"
class Song
    attr_reader :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists.push(artist)
        @@genres.push(genre)
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.artist_count
        artists_histogram = {}
        # Loop through self.artists and count how many times each uniq artist appears in class variable @@artis
        self.artists.each do |value|
            artists_histogram[value] = @@artists.count(value)
        end
        artists_histogram
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_histogram = {}
        # Loop through self.artists and count how many times each uniq artist appears in class variable @@artists.
        self.genres.each do |value|
            genre_histogram[value] = @@genres.count(value)
        end
        genre_histogram
    end

end