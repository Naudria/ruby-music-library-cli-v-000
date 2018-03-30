class MusicLibraryController
  attr_accessor :path

#accepts one argument, the path to the MP3 files to be imported
  def initialize(path = './db/mp3s')
    @path = path
    MusicImporter.new(path).import
  end

end