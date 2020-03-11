require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable

  @@artists = []

  def initialize
    # @@artists << self
   # self.class.all << self will be replaced by super
   super
   @songs = []
  end

  # def self.find_by_name(name)
    # @@artists.detect{|a| a.name == name}
  # end

  def self.all
    @@artists
  end

  # def self.reset_all
    # self.all.clear
  # end

  # def self.count
    # self.all.count
  # end

  def add_song(song)
    @songs << song
    songs.each { |song| add_song(song) }
  end

  # def to_param
    # name.downcase.gsub(' ', '-')
  # end
end
