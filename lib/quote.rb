
module QuoteOfTheDay
  class Quote
  
    attr_accessor :title, :content
    
    
    @@all = []
    
    
    def initialize
      @@all << self
    end
    
    def self.all
      @@all
    end
    
    def self.find_by_title(title)
      all.find do |quote|
        quote.title == title
      end
    end

  end
end
  


  