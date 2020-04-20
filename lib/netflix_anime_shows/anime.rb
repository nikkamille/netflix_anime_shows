require 'pry'

require_relative '../netflix_anime_shows'

class Anime
  
  attr_accessor :title, :description, :rating
  
  @@all = []
  
  def initialize
    @title = title
    @description = description
    @rating = rating
    @@all << self
  end
  
  def get_page 
    doc = Nokogiri::HTML(open("https://www.whats-on-netflix.com/whats-new/anime/"))
  end
  
  def create_anime
    get_page.css(".new-title").each do |anime|
      anime = Anime.new
      anime.title = get_page.css(".new-title-right h5").text
      anime.description = get_page.css(".title-description").text
      anime.rating = get_page.css(".new-title-ratings").text.gsub(/\s+/, '')
    end
    binding.pry
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all.clear
  end
end

Anime.new.create_anime