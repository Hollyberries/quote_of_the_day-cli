class QuoteOfTheDay::Quote
  
   response = APIManager.get_happy

  def self.get_quotes
    
    quotes = []
    
    quotes << self.get_happy
    quotes << self.get_funny
    quotes << self.get_sad
    
    quotes
  end
  
  def self.get_happy
    
    quote
  end
  
  #def self.get_funny
    #doc = Nokogiri::HTML(open("http://quotes-day.com/quotes/funny/"))
    
    #quote = self.new
    #quote.title = doc.search("h1").text
    #quote.words = doc.search().text
    #quote
  #end
  
  #def self.get_sad
    #doc = Nokogiri::HTML(open("http://quotes-day.com/quotes/sad"))
    
    #quote = self.new
    #quote.title = doc.search("h1").text
    #quote.words = doc.search().text
    #quote
  #end

end