class QuoteOfTheDay::Quotes
  
  attr_accessor :title, :content
    @@categories = ["inspire", "management", "sports", "life", "funny", "love", "art", "students"] 

 def self.today
    self.scrape_quotes
 end

 def self.scrape_quotes
    quotes = []
  
  @@categories.each do |category|
    quotes << self.scrape_quote(category)
    end
  quotes
  end
  
 
  def self.scrape_quote(url)
  doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/" + url)) 
   
   quote = self.new
   quote.title = doc.search("h1").text
   quote.content = doc.search("div.qcontent").text
   
   quote
  end
  
  
end