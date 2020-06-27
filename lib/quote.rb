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
    doc = Nokogiri::HTML(open("http://www.quotes-day.com/quotes/happy/"))
    binding.pry
    html_text = page.read
    
  end
  
  #def self.scrape_funny
    #doc = Nokogiri::HTML(open("http://www.quotes-day.com/quotes/funny/"))
    #html_text = page.read
    
  #end
  
  #def self.scrape_sad
    #doc = Nokogiri::HTML(open("http://www.quotes-day.com/quotes/sad/"))
    #html_text = page.read
    
  #end

end