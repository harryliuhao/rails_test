require 'httparty'
require 'pp'

class Coursera
	include HTTParty

	base_uri 'https://restcountries.eu/rest/v2/all'
	default_params fields: "name;region"
	format :json

	def self.for term
		get("", query: { query: term})["elements"]
	end
end

pp Coursera.for "Asia"