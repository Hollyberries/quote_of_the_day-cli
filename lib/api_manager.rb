class APIManager
  
 
   def self.get_quote_categories
      url = "http://quotes.rest/qod/categories.json"
      response = HTTParty.get(url)
      quote_category_list = response["categories"]
   end


  #def self.get_quote_of_the_day
    
  #end
  
end



#QOD url only = "http://quotes.rest/qod.json"