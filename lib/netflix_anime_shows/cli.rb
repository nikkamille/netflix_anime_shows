class NetflixAnimeShows::CLI 
  
  def start 
    anime_list
    menu
    sayonara
  end
  
  def anime_list
    puts ""
    puts "Kon'nichiwa! Here's our list of anime shows in Netflix."
    puts ""
  end
  
  def menu
    user_input = nil
    if user_input != "exit"
      puts "Which anime would you like to know about?"
      user_input = gets.chomp.to_i 
    end
  end
  
  def sayonara
    puts ""
    puts "Sayōnara!"
    puts ""
  end
  
end