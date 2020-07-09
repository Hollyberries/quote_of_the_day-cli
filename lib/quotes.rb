class QuoteOfTheDay::Quotes
  
  attr_accessor :title, :content
  @@all = []
  
 
  def self.all
    @@all
  end
  
    
  def save
    @@all << self
  end
  
end