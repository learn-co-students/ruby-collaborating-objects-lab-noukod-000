  class Song
  attr_accessor :name, :artist 
 


  def initialize(name)
    @name = name
    @artist = artist
   
  end
  
  def self.new_by_filename(file_name)
    song_name = file_name.split(" - ")[1]
    artist = file_name.split(" - ")[0]
    newsong = self.new(song_name)
    newsong.artist_name = artist
    newsong
  end


   def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end
 

end