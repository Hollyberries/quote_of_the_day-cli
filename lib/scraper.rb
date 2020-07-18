class QuoteOfTheDay::Scraper
  
  attr_accessor :quote
  
  
  #@@categories = ["inspire", "management", "sports", "life", "funny", "love", "art", "students"]
  #@@all = []
    
  #def initialize(url)
    #@quote = Quote.new
    #@title = title
    #@content = content
    
  #end
  
  
    def get_page
      doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/"))
    end
    
    def get_quotes
      self.get_page
    end
    
    
   def scrape_quotes
   @@categories.map do |category|
    @@all << self.scrape_quote(category)
    end
   end
 
   def scrape_quote(url) 
     Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/" + url))
     
     quote = Quote.new
     quote.title = doc.search("h1").text
     quote.content = doc.search("div.qcontent").text
     
     quote
   end
     
 
   def today
    self.scrape_quote
   end
   
   
  #def self.all
    #@@all
  #end
    
  #def self.scrape_quote(url)
  #doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/" + url)) 
  
   #quote = self.new    
   #quote.title = doc.search("h1").text
   #quote.content = doc.search("div.qcontent").text
    
    #quote
  #end
  
end