class QuoteOfTheDay::Quotes
  extend ScraperModule
  
  attr_accessor :title, :content, :url
  

 def self.today
   self.scrape_quotes
 end
 
 def self.scrape_quotes
   quotes = []
   
   quotes << self.scrape_first_quote
   quotes << self.scrape_second_quote
   quotes << self.scrape_third_quote
   quotes << self.scrape_fourth_quote
   quotes << self.scrape_fifth_quote
   quotes << self.scrape_sixth_quote
   quotes << self.scrape_seventh_quote
   quotes << self.scrape_eighth_quote
   
   quotes
 end
  
 
end