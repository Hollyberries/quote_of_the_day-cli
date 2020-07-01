class Quotes
  
  @@all = []
  
  attr_accessor :categories, :inspire, :management, :sports, :life, :funny, :love, :art, :students, :data_url
  
  
  def initialize
    @categories = categories
    @inspire = inspire
    @management = management
    @sports = sports
    @life = life
    @funny = funny
    @love = love
    @art = art
    @students = students
    @data_url = data_url
  end
  
  def self.all
    @@all
  end
  
  def self.create_from_api(array_of_hash)
    array_of_hash.each do |hash|
      self.create(self.format_hash(hash))
    end
  end
  
  def self.create(categories, data_url)
    q = self.new(categories, data_url)
    q.save
    q
  end
  
  def self.format_hash(hash)
    hash.each_with_object({}) do |(k, v), memo|
      memo[k.to_sym] = v
    end
  end
  
  def save
    @@all << self
  end
  
end