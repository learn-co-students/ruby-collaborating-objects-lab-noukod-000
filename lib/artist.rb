class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

def songs
    @songs
end

def save
    @@all << self
end

def self.all
    @@all
end

def self.find_or_create_by_name(name)
  found = @@all.find {|artist|  artist.name == name}
  #found ? found : Artist.new(name)
  if found
    found
  else
    Artist.new(name)
  end

end

def print_songs
    @songs.each do |song|
      puts song.name
    end
end

end
