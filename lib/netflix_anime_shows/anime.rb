class Anime
  
# Create setters and getters for :title, :description, :release_year, and :no_of_seasons
  attr_accessor :title, :description, :release_year, :no_of_seasons
  
# Create an empty array that will contain all of the anime shows as they are instantiated.
  @@all = []
  
  def initialize
    @@all << self
  end
  
end