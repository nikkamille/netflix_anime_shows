class NetflixAnimeShows::CLI 
  
  def start
    greeting
    menu
    more_info
  end
  
  def greeting
    puts ""
    puts "Kon'nichiwa! n_n"
    puts ""
  end
  
  def anime_list # method that shows all the titles alphabetically and with corresponding numbers
  
  end
  
  def menu
    puts ""
    puts "Would you like to see our list of anime shows in Netflix? Type in yes or no."
    puts ""
    
    # @anime = NetflixAnimeShows::Anime.all # will show all the titles alphabetically and with corresponding numbers
    
    user_input = get.chomp.downcase
    case user_input
    when "yes"
      puts "all the anime titles" # anime_list
    when "no"
      sayonara
    else
      puts "I'm sorry; I don't know that."
      menu
    end
  end
  
  def more_info
    puts "Which anime would you like to know more about? Enter a number:"
    user_input = gets.chomp.to_i 
    # should be able to choose an anime from the list by typing in a number and give out more info
  end
  
  def sayonara
    puts ""
    puts "Sayōnara!"
    puts ""
  end
  
end