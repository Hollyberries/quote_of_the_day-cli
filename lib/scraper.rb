class QuoteOfTheDay::Scraper
  
  attr_accessor :quote
  
  
  @@categories = ["inspire", "management", "sports", "life", "funny", "love", "art", "students"]


    def self.today
      scrape_quote
    end
    

   def scrape_quotes
    @@categories.map do |category|
    @@all << scrape_quote(category)
    end
   end
   
 
   def scrape_quote(url) 
     Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/" + url))
     
     quote = Quote.new
     quote.title = doc.search("h1").text
     quote.content = doc.search("div.qcontent").text
     
     quote
   end
     
 
end