require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './anime.rb'

class Scraper
  
  def scrape_titles
    document = NOKOGIRI::HTML(open("https://www.netflix.com/browse/genre/7424"))
    titles = document.css(".nm-collections-title-name").text 
  end
  
  def anime_list # returns all the titles as a list
    
  end
  
  
  
end