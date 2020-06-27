class QuoteOfTheDay::Quote
  
  attr_accessor :happy, :funny, :sad, :url
  
  def self.today
    self.scrape_quotes
  end
  
  
  def self.scrape_quotes
    
    quotes = []
    
    quotes << self.scrape_sites
    
     quotes
  end
  
  def self.scrape_sites
    doc = Nokogiri::HTML(open("http://www.quotes-day.com/quotes/happy/"))
  end
  
end