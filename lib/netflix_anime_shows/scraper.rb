require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative './anime.rb'

class Scraper
  
  def scrape_page 
    doc = Nokogiri::HTML(open("https://www.netflix.com/browse/genre/7424"))
    # binding.pry 
  end
  
  def get_details
  
end

Scraper.new.scrape_page

# title = doc.css(".nm-collections-title-name").first.text