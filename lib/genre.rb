class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.save
    @@all << self
  end

  def create(name)
    genre = Genre.new(name)
    genre.save
    genre
  end

  def self.destroy_all
    @@all.clear
  end

end
