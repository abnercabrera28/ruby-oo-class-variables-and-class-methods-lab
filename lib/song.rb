class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre 
        @@artists << @artist
        @@genres << @genre
        @@count += 1 
            
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
        @@ghash = {}
        @@genres.each do |g|
            if @@ghash[g]
                @@ghash[g] += 1
            else 
                @@ghash[g] = 1
            end
        end
        @@ghash
    end

    def self.artist_count
        @@ahash = {}
        @@artists.each do |a|
            if @@ahash[a]
                @@ahash[a] += 1
            else
                @@ahash[a] = 1
            end
        end
        @@ahash
    end
end