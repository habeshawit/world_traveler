class WorldTraveler::CLI 
    
    def call
      system("clear")
      WorldTraveler::Display.welcome_message
      sleep(4)

      @input = ""
       
      while @input != "exit"
        get_continents
        list_continents
        get_user_choice
        next_action
      end 
      goodbye
    end
    
    def get_continents
      @continent = WorldTraveler::Continents.all
    end
    
    def list_continents
        system("clear")
        WorldTraveler::Display.continent_list
      
      @continent.each.with_index(1) do |continent, index| 
        puts "#{index}. #{continent.name}".center(135).rjust(10)
        puts "-----------------------------------------".green.center(150)
      end
      puts ""
      puts "Where would you like to go? (Choose 1-#{@continent.size})".center(135).green.bold
    end
    
    def get_user_choice
      chosen_continent = gets.strip.to_i
      show_highlights_for(chosen_continent) 
    end 
    
    def show_highlights_for(chosen_continent)
        system("clear")
        if chosen_continent.between?(1,@continent.size)
            cont = @continent[chosen_continent - 1]
            cont.get_highlights
            puts "Here are highlights for #{cont.name}".light_blue.bold
            cont.highlights.each.with_index(1) do |high, idx|
                puts "#{idx}. #{high.name}"
            end
            get_user_highlight(cont)
        else
            puts "Not sure what you mean. You must enter a number between 1 - #{@continent.size}."
        end
    end
    
    def get_user_highlight(cont)
      puts "\nChoose a highlight in #{cont.name} to see more details.".light_blue.bold
      input = (gets.strip.to_i)-1
      if input.between?(0,cont.highlights.size-1)
        highlight = cont.highlights[input]
        highlight.index = input.to_i - 1
        highlight.get_highlight_details
        show_highlight_details(highlight)
      else
        puts "Not sure what you mean. You must enter a number between 1 - #{cont.highlights.size}."
      end
    end
    
    def show_highlight_details(highlight)
      puts "---------------------------------#{highlight.name}---------------------------------".center(155).yellow.bold
      highlight.info.each {|i| puts "#{i}\n"}
      puts "-----------------------------------------------------------------------------------".center(155).yellow.bold
    end 
    
    def next_action
      puts "\nType 'exit' to exit or any key to return to main menu.".green.bold
      @input = gets.strip
    end 
    
    def goodbye
      system("clear")
      WorldTraveler::Display.goodbye
    end 
  end
  
  