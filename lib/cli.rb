class QuoteOfTheDay::CLI
  
 
  def call 
    list_quotes
    menu
    goodbye
  end
  
  def list_quotes
    puts "Today's Quote Of The Day:"
    puts <<-OPTIONS
      1. Happy Quote of the Day
      2. Funny Quote of the Day
      3. Sad Quote of the Day
     OPTIONS
    end
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number for the kind of quote you would like to read or type list to see the options again or type exit:"
      input = gets.strip.downcase
      case input
        when "1"
          puts "Happy quote of the day"
        when "2"
          puts "Funny quote of the day"
        when "3"
          puts "Sad quote of the day"
        when "list"
          list_quotes
      end
    end
  end
  
  def goodbye
    puts "Come back soon for more quotes!"
  end
end