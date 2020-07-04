class QuoteOfTheDay::Quotes
  
  attr_accessor :title, :content, :url
  

 def self.today
   self.scrape_quotes
 end
 
 def self.scrape_quotes
   quotes = []
   
   quotes << self.scrape_first_quote
   quotes << self.scrape_second_quote
   quotes << self.scrape_third_quote
   quotes << self.scrape_fourth_quote
   quotes << self.scrape_fifth_quote
   quotes << self.scrape_sixth_quote
   quotes << self.scrape_seventh_quote
   quotes << self.scrape_eighth_quote
   
   quotes
 end
  
 def self.scrape_first_quote
   doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/inspire#"))
   
   quote = self.new
   quote.title = doc.search("h1").text.strip
   quote.content = doc.search("div.qcontent").text.strip
   quote.url = "https://theysaidso.com/quote-of-the-day/inspire#".strip
   
   quote
 end

  def self.scrape_second_quote
   doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/management#"))
   
   quote = self.new
   quote.title = doc.search("h1").text.strip
   quote.content = doc.search("div.qcontent").text.strip
   quote.url = "https://theysaidso.com/quote-of-the-day/management#".strip
   
   quote
 end
 
  def self.scrape_third_quote
   doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/sports#"))
   
   quote = self.new
   quote.title = doc.search("h1").text.strip
   quote.content = doc.search("div.qcontent").text.strip
   quote.url = "https://theysaidso.com/quote-of-the-day/sports#".strip
   
   quote
 end


  def self.scrape_fourth_quote
   doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/life#"))
   
   quote = self.new
   quote.title = doc.search("h1").text.strip
   quote.content = doc.search("div.qcontent").text.strip
   quote.url = "https://theysaidso.com/quote-of-the-day/life#".strip
   
   quote
 end
 
 
 def self.scrape_fifth_quote
   doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/funny#"))
   
   quote = self.new
   quote.title = doc.search("h1").text.strip
   quote.content = doc.search("div.qcontent").text.strip
   quote.url = "https://theysaidso.com/quote-of-the-day/funny#".strip
   
   quote
 end
 
 def self.scrape_sixth_quote
   doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/love#"))
   
   quote = self.new
   quote.title = doc.search("h1").text.strip
   quote.content = doc.search("div.qcontent").text.strip
   quote.url = "https://theysaidso.com/quote-of-the-day/love#".strip
   
   quote
 end
 
  def self.scrape_seventh_quote
   doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/art#"))
   
   quote = self.new
   quote.title = doc.search("h1").text.strip
   quote.content = doc.search("div.qcontent").text.strip
   quote.url = "https://theysaidso.com/quote-of-the-day/art#".strip
   
   quote
 end
 
 def self.scrape_eighth_quote
   doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/students#"))
   
   quote = self.new
   quote.title = doc.search("h1").text.strip
   quote.content = doc.search("div.qcontent").text.strip
   quote.url = "https://theysaidso.com/quote-of-the-day/students#".strip
   
   quote
 end
 
end