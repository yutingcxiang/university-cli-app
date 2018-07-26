class UniversityCliApp::CLI

  def call
    menu
    close_app
  end

  def menu
    input = nil
    unless input == "5"
      puts "Welcome to the top 50 Colleges & Universities in America for 2018."
      puts "Please select an option:"
      puts "1. View entire college list"
      puts "2. Select University by name"
      puts "3. Select University by rank"
      puts "4. Select universities by location (state)"
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
    elsif answer == "5"
      close_app
    else
      "Please try again."
      menu
    end
  end

    def list_colleges
      universities = UniversityCliApp::University.school_list
      universities.each_with_index do |university, index|
        puts "#{index + 1}. university.name"
      end
    end

    def list_by_rank
      puts "Please enter a number from 1-50:"
      answer = gets.strip
      universities = UniversityCliApp::University.school_list
      universities.each_with_index do |university, index|
        if index + 1 == answer
        puts "#{index + 1}. university.name"
        end
      end
    end

    def close_app
      puts "Thank you for checking out the rankings. Good luck with your selection!"
      exit
    end
end
