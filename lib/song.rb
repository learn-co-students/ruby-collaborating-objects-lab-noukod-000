class Song
  attr_accessor :artist, :name

  def initialize name
    @name = name
  end

  def self.new_by_filename filename
    artist_name, name, *rest = filename.split(' - ')

    song = Song.new(name)
    artist = Artist.new(artist_name)
    song.artist = artist
    artist.add_song song
    song
  end
end
