require 'pry'



class Artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods 
  
  attr_accessor :name
  attr_reader :songs

  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  @@artists = []


  def initialize
    super
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
