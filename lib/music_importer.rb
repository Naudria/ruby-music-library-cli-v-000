class MusicImporter

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect {|m| m.gsub("#{path}/","")}
  end
end
