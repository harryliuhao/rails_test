require 'httparty'
require 'pp'

class StackExchange
  include HTTParty
  base_uri 'api.stackexchange.com'

  def initialize(service, page)
    @options = { query: { site: service, page: page } }
  end

  def questions
    self.class.get("/2.2/questions", @options)
  end

  def users
    self.class.get("/2.2/users", @options)
  end
end

stack_exchange = StackExchange.new("stackoverflow", 1)
pp stack_exchange.questions
pp stack_exchange.users

# Use the class methods to get down to business quickly
#response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')

#puts response.body, response.code, response.message, response.headers.