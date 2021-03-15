require "pry"

class Artist
    attr_accessor :name, :song, :genre

    @@all = []
    def initialize(name)
        @name = name
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

    def self.create(artist_name)
        new_artist = Artist.new(artist_name)
        new_artist.save
        new_artist
    end

    def add_song(new_song)
        if new_song.artist == nil
            new_song.artist = self
        end
    end

    def songs
        Song.all.select {|song| song.artist == self} 
    end

    def genres
    end

end
