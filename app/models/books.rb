class Books
	include HTTParty

	base_uri 'https://www.googleapis.com/books/v1/volumes'
	default_params 
	format :json

	def self.for term
		get("", query: { q: "intitle:"+term})["items"]
	end
end