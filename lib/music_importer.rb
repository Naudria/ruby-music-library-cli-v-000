class MusicImporter
  #retrieves the path provided to the MusicImporter object
  attr_accessor :path

  def initialize(path)
    @path = path
  end

#loads all the MP3 files in the path directory
#normalizes the filename to just the MP3 filename with no path
  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect {|m| m.gsub("#{path}/","")}
  end
end
