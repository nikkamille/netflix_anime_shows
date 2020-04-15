require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative './anime.rb'

class Scraper
  
  def scrape_anime_page
    doc = NOKOGIRI::HTML(open("https://www.netflix.com/browse/genre/7424"))
    # titles = doc.css(".nm-collections-title-name").text
    binding.pry 
  end
  
end