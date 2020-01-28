class NetflixAnimeShows::CLI 
  
  def start 
    anime_list
    menu
  end
  
  def anime_list
    puts ""
    puts "Kon'nichiwa! Here's our list of anime shows in Netflix."
    puts ""
  end
  
  def menu
    puts "Which anime would you like to know about?"
    user_input = gets.chomp.to_i 
  end
  
  def goodbye
    if user_input == "exit"
      puts ""
      puts "Sayōnara!"
      puts ""
    end
  end
  
end