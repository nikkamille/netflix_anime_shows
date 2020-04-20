require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative './anime.rb'

class Scraper
  
  def get_page 
    anime_page = Nokogiri::HTML(open("https://www.whats-on-netflix.com/whats-new/anime/"))
  end
  
  def create_anime
    get_page.each do |anime|
      Anime.new
    end
  end
  
end

Scraper.new.get_page

