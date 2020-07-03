class QuoteOfTheDay::Quotes
  
  attr_accessor :name, :text, :url
  

 def self.today
   self.scrape_quotes
 end
 
 def self.scrape_quotes
   quotes = []
   
   quotes << self.scrape_site
   
   quotes
 end
  
 def self.scrape_site
   doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/inspire#"))
   binding.pry
   name = 
   text = 
   url = 
 end


 
end