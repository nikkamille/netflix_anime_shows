class NetflixAnimeShows::Scraper
  
  def scrape_anime_page
    doc = NOKOGIRI::HTML(open("https://www.netflix.com/browse/genre/7424"))
    titles = doc.css(".nm-collections-title-name").text
    binding.pry 
  end
  
  def scrape_anime_info
    
  end
  
  
  
end