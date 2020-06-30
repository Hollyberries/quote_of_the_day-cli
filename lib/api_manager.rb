class APIManager
  
  BASE_URL = "https://theysaidso.com"
  
   def self.get_quote_categories
    url = BASE_URL + "http://quotes.rest/qod/categories.json"
    response = HTTParty.get(url)
    response
  end

end


# {"success"=>{"total"=>8},
# "contents"=>
 # {"categories"=>
 #   {"inspire"=>"Inspiring Quote of the day",
  #   "management"=>"Management Quote of the day",
  #   "sports"=>"Sports Quote of the day",
  #   "life"=>"Quote of the day about life",
  #   "funny"=>"Funny Quote of the day",
   #  "love"=>"Quote of the day about Love",
   #  "art"=>"Art quote of the day ",
  #   "students"=>"Quote of the day for students"}},
# "baseurl"=>"https://theysaidso.com",
# "copyright"=>{"year"=>2022, "url"=>"https://theysaidso.com"}}