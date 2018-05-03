class Song
 
  attr_accessor :name, :artist
 
  def initialize(name)
    @name = name
    @artist = self.artist
  end
  
 
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
  
  #def new_by_filename(file_name)
   # new_instance = Song.new_by_filename(file_name)
  #end 
end