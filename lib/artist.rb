require 'pry'

class Artist
  attr_accessor :name

  @@all_artists = []
  @@song_count

  def self.all_artists
    @@all_artists
  end

  def initialize(name)
    @name = name
    @songs = []
    @@all_artists << self
  end

  def songs
    @songs
  end

  def add_song(song_obj)
    song_obj.artist = self
    @songs << song_obj #returns the full @songs array
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    add_song(new_song) #returns the full @songs array
  end

  def self.song_count
    @@song_count = 0
    @@all_artists.each do |artist|
      @@song_count += artist.songs.length
    end
    @@song_count
  end

end
