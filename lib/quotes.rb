class QuoteOfTheDay::Quotes
  
  attr_accessor :title, :content

 def self.today
    self.scrape_quotes
 end

 def self.scrape_quotes
    quotes = []
  
   quotes << scrape_first_quote
   quotes << scrape_second_quote
   quotes << scrape_third_quote
   quotes << scrape_fourth_quote
   quotes << scrape_fifth_quote
   quotes << scrape_sixth_quote
   quotes << scrape_seventh_quote
   quotes << scrape_eighth_quote
   
    quotes
  end
 
  
  def self.scrape_first_quote
   doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/inspire#"))
   
   quote = QuoteOfTheDay::Quotes.new
   quote.title = doc.search("h1").text.gsub("\n", "").gsub("\t", "")
   quote.content = doc.search("div.qcontent").text.gsub("\n", "").gsub("\t", "")
   
   quote
  end
  

  def self.scrape_second_quote
   doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/management#")
   
   quote = QuoteOfTheDay::Quotes.new
   quote.title = doc.search("h1").text.gsub("\n", "").gsub("\t, "")
   quote.content = doc.search("div.qcontent").text.gsub("\n", "").gsub("\t", "")
    quote
  end
 
  def self.scrape_third_quote
   doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/sports#"))
   
   quote = QuoteOfTheDay::Quotes.new
   quote.title = doc.search("h1").text.gsub("\n", "")
   quote.content = doc.search("div.qcontent").text.gsub("\n", "")
   
   quote
  end


  def self.scrape_fourth_quote
   doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/life#"))
   
   quote = QuoteOfTheDay::Quotes.new
   quote.title = doc.search("h1").text.gsub("\n", "")
   quote.content = doc.search("div.qcontent").text.gsub("\n", "")
   
   quote
  end
 
 
  def self.scrape_fifth_quote
   doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/funny#"))
   
   quote = QuoteOfTheDay::Quotes.new
   quote.title = doc.search("h1").text.gsub("\n", "")
   quote.content = doc.search("div.qcontent").text.gsub("\n", "")
   
   quote
  end
 
  def self.scrape_sixth_quote
   doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/love#"))
   
   quote = QuoteOfTheDay::Quotes.new
   quote.title = doc.search("h1").text.gsub("\n", "")
   quote.content = doc.search("div.qcontent").text.gsub("\n", "")
   
   quote
  end
 
  def self.scrape_seventh_quote
   doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/art#"))
   
   quote = QuoteOfTheDay::Quotes.new
   quote.title = doc.search("h1").text.gsub("\n", "")
   quote.content = doc.search("div.qcontent").text.gsub("\n", "")
   
   quote
  end
 
  def self.scrape_eighth_quote
   doc = Nokogiri::HTML(open("https://theysaidso.com/quote-of-the-day/students#"))
   
   quote = QuoteOfTheDay::Quotes.new
   quote.title = doc.search("h1").text.gsub("\n", "")
   quote.content = doc.search("div.qcontent").text.gsub("\n", "")
   
   quote
  end
end