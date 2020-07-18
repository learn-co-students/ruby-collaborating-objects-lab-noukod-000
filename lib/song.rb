class Song
  attr_accessor :artist, :name

  def initialize(name)

      @artist = artist
      @name = name
  end

  def self.new_by_filename(filename)
      song = self.new
      song.title = filename.split(" - ")[1]
      song
    end


  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
end
