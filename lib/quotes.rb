class Quotes
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.create_from_api(array_of_hashes)
    array_of_hashes.each do |hash|
      self.create(hash)
  end
  
  def self.create(categories, url)
    q = self.new
    q.save
    q
  end
  
  def self.format_hash(hash)
    hash.each_with_object({}) do |{k, v}, memo|
      memo[k.to_sym] = v
  end
  
  
  attr_accessor :categories, :url
  
  def initialize
    @categories = categories
    @url = url
  end

end