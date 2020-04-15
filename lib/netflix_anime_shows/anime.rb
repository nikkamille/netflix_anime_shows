class Anime
  
  attr_accessor :title, :description, :release_year, :no_of_seasons
  
  @@all = []
  
  def initialize(title:, description:, release_year:, no_of_seasons:)
    @title = title
    @description = description
    @release_year = release_year
    @no_of_seasons = no_of_seasons
    @all << self
  end
  
  def self.all
    @all
  end
  
  def self.reset_all
    @all.clear
  end
  
  
  
end