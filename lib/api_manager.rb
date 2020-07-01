class APIManager
  
  BASE_URL = "https://quotes.rest/qod/categories?language=en&detailed=false"
  
   def self.get_quote_categories
    url = BASE_URL + "https://quotes.rest/qod?language=en"
    response = HTTParty.get(url)
    response
  end

end

