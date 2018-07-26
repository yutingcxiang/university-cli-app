class UniversityCliApp::CLI

  def call
    list_colleges
    menu
    close_app
  end

  def menu
    input = nil
    unless input == "5"
      puts "Welcome to the top 50 Colleges & Universities in America for 2018."
      puts "Please select an option:"
      puts "1. View college list"
      puts "2. Select University by name"
      puts "3. Select University by rank"
      puts "4. Select university by location (state)"
      puts "5. Exit"
    input = gets.strip
    end

    case answer
    when "1"
      list_colleges
    when "2"
      list_by_name
    when "3"
      list_by_rank
    when "4"
      list_location
    end
  end

    def list_colleges
    end

    def list_by_name
    end

    def list_by_rank
    end

    def list_by_location
    end

    def close_app
      puts "Thank you for checking out the rankings. Good luck with your selection!"
    end
# -> "Would you like additional details? (Y/N)"
# -> Additional info + website link
# -> "Would you like to see another college? (Y/N)"
# -> Back to menu or quit

end
