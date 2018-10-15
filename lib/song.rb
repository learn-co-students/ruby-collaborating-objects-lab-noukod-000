class Song

  attr_accessor :name,:artist

  def initialize(name)
    @name=name
  end

  def self.new_by_filename(name)
    song_info_array=name.split(" - ")
    artist_name=song_info_array[0]
    song_name=song_info_array[1]

    artist = Artist.new(artist_name)
    song = Song.new(song_name)
    artist.add_song song
    song.artist=artist
    song

  end

end
