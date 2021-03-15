class Genre
    attr_accessor :name, :artist, :song

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
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

    def self.create(new_genre)
        created_genre = Genre.new(new_genre)
        created_genre.save
        created_genre
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
    end

    
        
end