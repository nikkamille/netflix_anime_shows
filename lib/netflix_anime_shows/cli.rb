class NetflixAnimeShows::CLI 
  
  def start 
    anime_list
    menu
    sayonara
  end
  
  def anime_list
    puts ""
    puts "Kon'nichiwa! Would you like to see a list of anime shows in Netflix? Type in yes or no."
    puts ""
    
    @anime = NetflixAnimeShows::Anime.all
    
    user_input = gets.chomp.downcase
    if user_input == "yes"
      puts  
    end
        
    
  end
  
  def menu
    puts "Which anime would you like to know about? Enter a number:"
    user_input = gets.chomp.to_i 
  end
  
  def sayonara
    puts ""
    puts "Sayōnara!"
    puts ""
  end
  
end