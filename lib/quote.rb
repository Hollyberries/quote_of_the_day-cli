class QuoteOfTheDay::Quote
  
  attr_accessor :title, :words
  
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
    
    quote = self.new
    quote.title = doc.search("h1").text
    quote.words = doc.search().text
    binding.pry
    quote
  end
  
  #def self.scrape_funny
    #doc = Nokogiri::HTML(open("http://quotes-day.com/quotes/funny/"))
    
    #quote = self.new
    #quote.title = doc.search("h1").text
    #quote.words = doc.search().text
    #quote
  #end
  
  #def self.scrape_sad
    #doc = Nokogiri::HTML(open("http://quotes-day.com/quotes/sad"))
    
    #quote = self.new
    #quote.title = doc.search("h1").text
    #quote.words = doc.search().text
    #quote
  #end

end