class QuoteOfTheDay::CLI
  
 
  def call 
    list_quotes
    menu
    goodbye
  end
  
  def list_quotes
    puts "Today's Quote Of The Day:"
    @quotes = QuotesOfTheDay::Dog.today
    @quotes.each.with_index(1) do |quote, num|
      puts "#{num}. #{quote.happy} - #{quote.funny} - #{quote.sad}"
    end
  end
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the quote you would like more info on or type list to see the quotes again or type exit:"
      input = gets.strip.downcase
      if input.to_i > 0
        the_quote = @quotes[input.to_i-1]
        puts "#{the_quote.happy} - #{the_quote.funny} - #{the_quote.sad"
      elsif
       input == "list"
        list_quotes
        else
          puts "Not sure what quote you want to see."
      end
    end
  end
  
  def goodbye
    puts "Come back soon for more quotes!"
  end
end