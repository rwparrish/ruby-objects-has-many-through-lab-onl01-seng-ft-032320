class Artist
  
    attr_accessor :name, :song
  
   @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end 
  
  def new_song(song, genre)
    Song.new(song, genre, self)
    
  end
  
  
  
  
  
  
  
  
  
  
  
end