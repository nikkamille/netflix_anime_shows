require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative './anime.rb'

class Scraper
  
  def get_page 
    anime_page = Nokogiri::HTML(open("https://www.netflix.com/browse/genre/7424"))
  end
  
  def get_info
    anime_info_page = Nokogiri::HTML(open("https://www.netflix.com/title/80050063"))
  end
  
  def scrape_anime_shows
    self.get_page.css(".nm-collections-title-name").text
  end
  
  def scrape_anime_info
    self.get_info.css(".details-container")
    binding.pry
  end
  
  def create_anime_shows
    scrape_anime_shows.each do |anime|
      Anime.new
    end
  end
  
end

Scraper.new.scrape_anime_info

# title = doc.css(".nm-collections-title-name").first.text