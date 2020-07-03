class QuoteOfTheDay::Quotes
  
  attr_accessor :title, :content, :author, :url
  

 def self.today
   self.scrape_quotes
 end
 
 def self.scrape_quotes
   quotes = []
   
   quotes << self.scrape_first_quote
   
   quotes
 end
  
 def self.scrape_first_quote
   doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/inspire"))
   
   quote = self.new
   quote.title = doc.search("h1").text
   quote.content = doc.search("p.lead").text
   quote.author = doc.search("span").text
   quote.url = "https://theysaidso.com/quote-of-the-day/inspire"
   
   quote
 end


 
end