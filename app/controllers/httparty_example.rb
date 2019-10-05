require 'httparty'
require 'pp'

class Coursera
	include HTTParty

	base_uri 'https://www.googleapis.com/books/v1/volumes'
	default_params 
	format :json

	def self.for term
		get("", query: { q: term})
	end
end

pp Coursera.for "intitle:garden"