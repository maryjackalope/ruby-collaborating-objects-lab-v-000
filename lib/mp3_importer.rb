class MP3Importer

  attr_accessor :path, :files, :directory
  
  def initialize(path)
    @path=path
  end  
  
  def files  
  @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

end 