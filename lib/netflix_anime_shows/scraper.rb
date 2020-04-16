require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative './anime.rb'

class Scraper
  
  def get_page 
    doc = Nokogiri::HTML(open("https://www.netflix.com/browse/genre/7424"))
  end
  
  def scrape_anime_shows
    self.get_page.css(".nm-collections-title-name").text
  end
  
  def create_anime_shows
    scrape_anime_shows.each do |anime|
      Anime.new
    end
  end
  
end

Scraper.new.scrape_anime_shows

# title = doc.css(".nm-collections-title-name").first.text