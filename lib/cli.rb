class QuoteOfTheDay::CLI
  
 
  def call 
    list_quotes
    menu
    goodbye
  end
  
  def list_quotes
    puts "Welcome to your Quote Of The Day:"
    @quotes = QuoteOfTheDay::Quotes.today
    @quotes.each.with_index(1) do |quote, num|
      puts "#{num}. #{quote.name}"
    end
  end
  
  def menu
    input = nil
    while input != "exit"
      puts "Please choose a number for the kind of quote you would like to read or type list to see the options again or type exit:"
      input = gets.strip.downcase
      
      if input.to_i > 0
        the_quote = @quotes[input.to_i-1]
        puts "#{the_quote.name} - #{the_quote.text}"
      elsif input == "list"
        list_quotes
      else 
        puts "Not sure what kind of quote you would like to see, type list or exit."
      end
    end
  end
  
  def goodbye
    puts "Come back tomorrow for more quotes to read!"
  end
end