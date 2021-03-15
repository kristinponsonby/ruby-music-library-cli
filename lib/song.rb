require "pry"
class Song
    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize(name, artist = nil, genre = nil)
        @name = name
        self.artist = artist if artist
        @genre = genre
    end

    def self.all
        @@all
    end

    def self.destroy_all
        @@all.clear
    end

    def save
        @@all << self
    end

    def self.create(song_name)
        new_song = Song.new(song_name)
        new_song.save
        new_song
    end

    def find_by_name
    end

    def find_or_create_by_name

    end

    def artist=(artist)
        @artist = artist
        artist.add_song(self)
    end
    
end

#new_song = Song.new('In the Aeroplane Over the Sea')
#new_song.name = 