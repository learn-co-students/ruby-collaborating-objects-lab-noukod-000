class MP3Importer
  attr_accessor :path
  def initialize path
    @path = path
    @mp3_files = []
  end

  def files
    mp3_files = Dir[@path + "/*.mp3"].collect {|file| file.sub @path + '/', ''}
    @mp3_files = mp3_files
    mp3_files
  end

  def import
    files
    @mp3_files.each do |filename|
      song = Song.new_by_filename filename
    end
  end
end
