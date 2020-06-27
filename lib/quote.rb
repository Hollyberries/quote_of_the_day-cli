class QuoteOfTheDay::Quote
  
  attr_accessor :title, :url
  
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
    doc = Nokogiri::HTML(open("http://quotes-day.com/quotes/happy/"))
    title = doc.search("h1").text
  end
  
  #def self.scrape_funny
    #doc = Nokogiri::HTML(open("http://quotes-day.com/quotes/funny"))
    #title = doc.search("h1").text
    #url = "http://quotes-day.com"
  #end
  
  #def self.scrape_sad
    #doc = Nokogiri::HTML(open("http://quotes-day.com/quotes/sad"))
    #title = doc.search("h1").text
    #url = "http://quotes-day.com"
    #binding.pry
  #end

end