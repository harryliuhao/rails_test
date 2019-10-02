require 'httparty'
require 'pp'

class Coursera
	include HTTParty

	base_uri 'https://api.twitter.com/1.1/search/tweets.json'
	default_params fields: "lang", q: "search"
	format :json

	def self.for term
		get("", query: { query: term})["elements"]
	end
end

pp Coursera.for "en"