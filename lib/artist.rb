class Artist 
  attr_accessor :name 
  @@all=[] 
  def initialize(name) 
    @name = name 
    @songs=[] 
    @@all << self 
    end 
    def songs 
      @songs 
      end 
      def add_song(song) 
        @songs << song 
        end 
        def save 
        @@all << self 
        end 
        def self.all 
          @@all 
          end 
          def self.find_or_create_by_name(name) 
            found = @@all.find {|artist| artist.name == name} 
            if found
              found 
              else Artist.new(name) 
                end 
                end 
                def print_songs 
                  @songs.each do |song| 
                    puts song.name 
                    end 
                    end 
                    end