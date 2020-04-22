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
        @@artists << artist
        @@genres << genre
    end

    def self.class_variable_count

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
        genre_counts = {}
        @@genres.each do |value|
            if genre_counts[value] == nil
                genre_counts[value] = 0
            end
            genre_counts[value] += 1
        end
        genre_counts
    end

    def self.artist_count
        artist_counts = {}
        @@artists.each do |value|
            if artist_counts[value] == nil
                artist_counts[value] = 0
            end
            artist_counts[value] += 1
        end
        artist_counts
    end
end