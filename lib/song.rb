class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@genres << @genre
        @@artists << @artist
        @@count +=1
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
        @@genres.tally
    end
    def self.artist_count
        @@artists.tally
    end
end
puts nyash=Song.new("Beautiful","Shinski","R&B")
puts Ben=Song.new("navutishwa","Bensoul","rhumba")
puts vokali=Song.new("melody","wanavokali","soft rock")
puts Song.count
puts Song.genres