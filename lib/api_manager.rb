class APIManager
  
  BASE_URL = "http://quotes.rest/yaml/theysaidso.quotes.openapi.yaml?v1.1"
  
  def self.get_quotes
    url = BASE_URL + "http://quotes.rest/qod/categories.json"
    response = HTTParty.get(url)
    response
  end

end
