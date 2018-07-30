class UniversityCliApp::CLI

  def call
    menu
  end

  def menu
    input = nil
    unless input == "3"
      puts "Welcome to the top 50 Colleges & Universities in America for 2018."
      puts "Please select an option and press enter:"
      puts "1. View entire college list"
      puts "2. Select University by rank"
      puts "3. Exit"
    answer = gets.strip

    if answer == "1"
      list_colleges
    elsif answer == "2"
      list_by_rank
    elsif answer ==  "3"
      close_app
    else
      puts "Please try again."
      menu
    end
    end
  end

    def list_colleges
      UniversityCliApp::University.school_list
      list = UniversityCliApp::University.school_list
      list.each do |school|
        puts "#{school[:rank]}. #{school[:name]}"
      end
    end

    def list_by_rank
      puts "Please enter a number from 1-50:"
      answer = gets.strip
      list = UniversityCliApp::University.school_list
      list.each do |school|
        if answer == school.rank
          puts "#{school[:rank]}. #{school[:name]}"
        end
      end
    end

    def close_app
      puts "Thank you for checking out the rankings. Good luck with your selection!"
      exit
    end
end
