class Song
  attr_accessor :name, :artist, :genre

  @@all =[]

  def initialize(name, artist = nil, genre = nil)
    @artist = artist
    @name = name
    @genre = genre
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    song = Song.new(name)
    song.save
    song
  end

  def artist=(artist)
    artist.add_song(self)
  end
end
