class QuoteOfTheDay::Quote
  
  attr_accessor :mood, :url
  
  def self.today
    self.scrape_quotes
  end
  
  
  def self.scrape_quotes
    
    quotes = []
    
    quotes << self.scrape_happy
    quotes << self.scrape_funny
    quotes << self.scrape_sad
    
     quotes
  end
  
  def self.scrape_happy
    doc = Nokogiri::HTML(open("http://www.quotes-day.com/quotes/happy/"))
    
  end
  
  def self.scrape_funny
    doc = Nokogiri::HTML(open("http://www.quotes-day.com/quotes/funny/"))
    
  end
  
  def self.scrape_sad
    doc = Nokogiri::HTML(open("http://www.quotes-day.com/quotes/sad/"))
    
  end
  
end