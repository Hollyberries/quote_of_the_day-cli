class QuoteOfTheDay::Scraper
  
  attr_accessor :quote
  
  
  @@categories = ["inspire", "management", "sports", "life", "funny", "love", "art", "students"]
  @@all = []


    def self.today
      self.scrape_quotes
    end
    

   def self.scrape_quotes
    @@categories.map do |category|
    @@all << scrape_quote(category)
    end
   end
   
 
   def self.scrape_quote(url) 
     doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/" + url))
     
     quote = self.new
     quote.title = doc.search("h1").text
     quote.content = doc.search("div.qcontent").text
     
     quote
   end
     
 
end