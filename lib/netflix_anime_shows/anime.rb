class NetflixAnimeShows::Anime
  
  attr_accessor :title, :description, :release_year, :no_of_seasons
  
  @@all = []
  
  def scrape_anime_page
    doc = NOKOGIRI::HTML(open("https://www.netflix.com/browse/genre/7424"))
    titles = doc.css(".nm-collections-title-name").text
    binding.pry 
  end
  
end