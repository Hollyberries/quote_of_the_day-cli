 require 'net/http'
 require 'open-uri'
 require 'json'
 require 'nokogiri'
 require 'pry'
 require 'httparty'
 

require_relative "./version"
require_relative './cli'
require_relative './quotes'
require_relative './api_manager'


response = APIManager.get_quote_categories
binding.pry