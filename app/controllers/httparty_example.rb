require 'httparty'
require 'pp'

class Coursera
	include HTTParty

	base_uri 'https://www.googleapis.com/books/v1/volumes'
	default_params 
	format :json

	def self.for term
		get("", query: { q: "intitle:"+term})["items"]
	end
end

results=Coursera.for "garden"
#puts results[0]["volumeInfo"]["title"]
results.each {|e| puts e["volumeInfo"]["imageLinks"]["smallThumbnail"]}