class MP3Importer
  def import(list_of_filenames)
    list_of_filenames.each{ |filename| song.new_by_filename(filename)}
    end
end
