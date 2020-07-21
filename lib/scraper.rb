class QuoteOfTheDay::Scraper
  
  @@categories = ["inspire", "management", "sports", "life", "funny", "love", "art", "students"]


   def self.today
    self.scrape_quotes
   end
   
   def self.scrape_quotes
    @@categories.map do |category|
      self.scrape_quote(category)
    end
   end
   
 
   def self.scrape_quote(url) 
     doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/" + url))
     
     quote = QuoteOfTheDay::Quote.new
     quote.title = doc.search("h1").text
     quote.content = doc.search("div.qcontent").text
     quote
   end
 
end