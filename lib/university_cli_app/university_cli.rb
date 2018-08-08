class UniversityCliApp::UniversityCLI

  def call
    menu
    UniversityCliApp::University.new.build_list
  end

  def menu
    input = nil
    unless input == "3"
      puts "Welcome to the top 50 Colleges & Universities in America for 2018."
      puts ""
      puts "Please select an option and press enter:"
      puts "1. View entire college list"
      puts "2. Select University by rank"
      puts "3. Exit"
      puts ""
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

    puts "Please choose another option and press enter:"
    puts "1. Back to menu"
    puts "2. Exit"
    input = gets.strip

    if input == "1"
      menu
    elsif input == "2"
      close_app
    else
      puts "Please try again."
      menu
    end
    end
  end

    def list_colleges
      puts "Top 50 Colleges & Universities in America for 2018"
      list = UniversityCliApp::University.all
      list.each do |school|
        puts "#{school[:rank]}. #{school[:name]}"
      end
      puts ""
    end

    def list_by_rank
      puts "Please enter a number from 1-50 and press enter:"
      answer = gets.strip
      num = answer.to_i

      unless num >= 1 && num <= 50
        puts "Invalid. Please try again."
        answer = gets.strip
      end

      list = UniversityCliApp::University.all
      list.each do |school|
        if answer == school[:rank]
          puts "#{school[:rank]}. #{school[:name]}"
          puts "#{school[:location].capitalize}"
          puts ""
          puts "#{school[:description]}"
          puts ""
          puts "Learn more at: #{school[:url]}."
          puts ""
        end
      end
    end

    def close_app
      puts "Thank you for checking out the rankings. Good luck with your selection!"
      exit
    end
end
