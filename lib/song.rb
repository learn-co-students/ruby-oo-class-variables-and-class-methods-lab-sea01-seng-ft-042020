class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    def initialize(name, artist, genre)
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

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        histogram = {}
        @@genres.map do |key|
            if !histogram[key]
                histogram[key] = 1
            else 
                histogram[key] +=1
            end
        end
        return histogram
    end

    def self.artist_count
        histogram = {}
        @@artists.map do |key|
            if !histogram[key]
                histogram[key] = 1
            else 
                histogram[key] +=1
            end
        end
        return histogram
    end
end