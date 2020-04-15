require 'pry'

class Anime
  
  attr_accessor :title, :description, :release_year, :no_of_seasons
  
  @@all = []
  
  def initialize(title:, description:, release_year:, no_of_seasons:)
    @title = title
    @description = description
    @release_year = release_year
    @no_of_seasons = no_of_seasons
    binding.pry
  end
  
  Anime.new(title: "One Punch Man", description: "kkkk", release_year: "2015", no_of_seasons: "2") 
  
  def scrape_anime_page
    doc = NOKOGIRI::HTML(open("https://www.netflix.com/browse/genre/7424"))
    titles = doc.css(".nm-collections-title-name").text
    # binding.pry 
  end
  
end