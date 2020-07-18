
class QuoteOfTheDay::Quote
  
  attr_accessor :title, :content
  
  
  @@all = []
  
  
  def initialize
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.today
    self.scrape_quotes
  end

end
  


  
  #def self.find_by_title(title)
    #all.find do |quote|
      #quote.title == title
    #end
  #end