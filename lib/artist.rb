class Artist
  attr_accessor :name, :songs
 
  @@song_count = 0
  
  @@all =[]
  
  def initialize(name)
    @name = name
    @songs = []
  end
 
  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end
  
  def add_song_by_name(song_name)
    song = Song.new("#{song_name}")
    add_song(song)
  end

  def self.song_count
    @@song_count
  end
  
  def songs
  @songs
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self 
  end
  
  
  def self.find_or_create_by_name
    self.all.detect {|x| x.name == name} || Artist.new(name)
  end
  
  def print_songs
    self.songs.each do |song|
    puts song.name
    end
  end 


end