class QuoteOfTheDay::CLI
  
 
  def call 
    list_quotes
    menu
    goodbye
  end
  
  def list_quotes
    puts "Today's Quote Of The Day:"
    @quotes = QuoteOfTheDay::Quote.today
    @quotes.each.with_index(1) do |quote, num|
      puts "#{num}. #{quote.title} - #{quote.words}"
    end
  end
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number for the kind of quote you would like to read or type list to see the options again or type exit:"
      input = gets.strip.downcase
      if input.to_i > 0
        the_quote = @quotes[input.to_i-1]
        puts "#{num}. #{the_quote.title} - #{quote.words}"
      elsif input == "list"
        list_quotes
      else 
        puts "Not sure what quote you would like to see, type list or exit."
      end
    end
  end
  
  def goodbye
    puts "Come back soon for more quotes!"
  end
end