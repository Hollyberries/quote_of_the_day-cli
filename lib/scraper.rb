class QuoteOfTheDay::Scraper
  
  #attr_accessor :quote, :doc
  
  @@categories = ["inspire", "management", "sports", "life", "funny", "love", "art", "students"]
  @@all = []
    
  #def initialize
    #@quote = DailyQuote.new
    #@doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/"))
  #end
  
  
   def self.today
    self.scrape_quotes
   end
  
   def self.scrape_quotes
   @@categories.map do |category|
    @@all << self.scrape_quote(category)
    end
   end
 
  def self.all
    @@all
  end
    
  def self.scrape_quote(url)
  doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/" + url)) 
  
   @quote = Quote.new    
   @quote.title = doc.search("h1").text
   @quote.content = doc.search("div.qcontent").text
    
    quote
  end
  
end