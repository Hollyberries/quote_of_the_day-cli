class QuoteOfTheDay::Quotes
  
  attr_accessor :name, :text, :url
  

 def self.today
   
    quote_1 = self.new
    quote_1.name = "Inspiring Quote Of The Day"
    quote_1.url = "https://theysaidso.com/quote-of-the-day/inspire#"
    
    quote_2 = self.new
    quote_2.name = "Management Quote Of The Day"
    quote_2.url = "https://theysaidso.com/quote-of-the-day/management#"

    quote_3 = self.new
    quote_3.name = "Sports Quote Of The Day"
    quote_3.url = "https://theysaidso.com/quote-of-the-day/sports#"
    
    quote_4 = self.new
    quote_4.name = "Quote Of The Day About Life"
    quote_4.url = "https://theysaidso.com/quote-of-the-day/life#"
    
    quote_5 = self.new
    quote_5.name = "Funny Quote Of The Day"
    quote_5.url = "https://theysaidso.com/quote-of-the-day/funny#"
    
    quote_6 = self.new
    quote_6.name = "Quote Of The Day About Love"
    quote_6.url = "https://theysaidso.com/quote-of-the-day/love#"
    
    quote_7 = self.new
    quote_7.name = "Art Quote Of The Day"
    quote_7.url = "https://theysaidso.com/quote-of-the-day/art#"
    
    quote_8 = self.new
    quote_8.name = "Quote Of The Day For Students"
    quote_8.url = "https://theysaidso.com/quote-of-the-day/students#"
    
    [quote_1, quote_2, quote_3, quote_4, quote_5, quote_6, quote_7, quote_8]
    
  end
  


 
end