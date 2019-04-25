class Artist 
  attr_accessor :name

  @@all = [] 
   
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def songs
    @songs
  end 
  
  def add_song(song_name)
    @songs << song_name
    song_name.artist = self 
  end 
  
  def save 
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  
  def self.find(artist_name)
    @@all.find {|art| art.name == artist_name}
  end 
  
  def self.find_or_create_by_name(artist_name)
    if find(artist_name)
          find(artist_name)
      else
        artist = self.new(artist_name)
        artist.save
         artist
    end
   
  end 
 
   
   def print_songs
    puts @songs.collect{|val| val.name}
   end 
  
end 