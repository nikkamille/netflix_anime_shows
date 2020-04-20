require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative './anime.rb'

class Scraper
  
  def get_page 
    anime_page = Nokogiri::HTML(open("https://www.whats-on-netflix.com/whats-new/anime/"))
    binding.pry
  end
  
  def scrape_anime_shows
    self.get_page.css(".nm-collections-title-name").text
  end
  
  def scrape_anime_info
    self.get_info.css(".details-container")
  end
  
  def create_anime_shows
    scrape_anime_shows.each do |anime|
      Anime.new
    end
  end
  
end

Scraper.new.get_page

