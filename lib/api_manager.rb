class APIManager
  
  BASE_URL = "http://www.quotes-day.com/"
  
  def self.get_happy
    url = BASE_URL + "http://www.quotes-day.com/quotes/happy/"
    response = HTTParty.get(url)
    response
  end
  
  
end