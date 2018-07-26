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
    answer = gets.strip
    end

    if answer == "1"
      list_colleges
    elsif answer == "2"
      list_by_name
    elsif answer ==  "3"
      list_by_rank
    elsif answer == "4"
      list_location
    else
      "Please try again."
    end
  end

    def list_colleges
      @universities = UniversityCliApp::Top50.top50
      @universities.each_with_index do |university, index|
        puts "#{index + 1}. university.name"
      end
    end

    def list_by_name
      puts "Please enter the name (ex: Princeton):"
      # answer = gets.strip
      # @universities = UniversityCliApp::Top50.top50
      # if @universities.name.find?(answer)
      #   puts university
      end
    end

    def list_by_rank
      puts "Please enter a number from 1-50:"
      answer = gets.strip
      @universities = UniversityCliApp::Top50.top50
      @universities.each_with_index do |university, index|
        if index + 1 == answer
        puts "#{index + 1}. university.name"
    end

    def list_by_location
      puts "Please enter the state (ex: NJ):"
      answer = gets.strip
      # @universities = UniversityCliApp::Top50.top50
      # if @universities.location.find?(answer)
      #   puts university
    end

    def close_app
      puts "Thank you for checking out the rankings. Good luck with your selection!"
    end
# -> "Would you like additional details? (Y/N)"
# -> Additional info + website link
# -> "Would you like to see another college? (Y/N)"
# -> Back to menu or quit

end
