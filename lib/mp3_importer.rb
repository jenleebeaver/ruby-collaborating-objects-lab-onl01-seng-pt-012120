
require 'pry'

class MP3Importer

  attr_reader :path #just a reader, don't want to give people access to the filepath?

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(self.path).select {|file| file.end_with?(".mp3")}
  end

  def import
    self.files.each do |file|
      Song.new(file)
    end
  end
  
end
