
class QuoteOfTheDay::Quote
  
  attr_accessor :title, :content, :url
  
  @@categories = ["inspire", "management", "sports", "life", "funny", "love", "art", "students"]
  @@all = []
  
  
  def initialize(url)
    @title = title
    @content = content
    @url = url
  end
  
  
  def self.all
    @@all
  end
  
  
  
end
  
    #@@categories = ["inspire", "management", "sports", "life", "funny", "love", "art", "students"] 
    
  #@@all = []

 #def self.today
    #self.scrape_quotes
 #end

 #def self.scrape_quotes
   #@@categories.map do |category|
    #@@all << self.scrape_quote(category)
    #end
 #end
  
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
  
  #def self.find_by_title(title)
    #all.find do |quote|
      #quote.title == title
    #end
  #end